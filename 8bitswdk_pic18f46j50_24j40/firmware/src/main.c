/**
 * TP SY34 
 *
 * Nom binôme : THIBERGE, DA COSTA, SANCHEZ SILVA
 *
 * Version : v1.5
 *
 */




// PIC18F46J50 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1L
#pragma config WDTEN = OFF       // Watchdog Timer (Enabled)
#pragma config PLLDIV = 2       // PLL Prescaler Selection bits (No prescale (4 MHz oscillator input drives PLL directly))
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset (Enabled)
#pragma config XINST = OFF       // Extended Instruction Set (Enabled)

// CONFIG1H
#pragma config CPUDIV = OSC3_PLL3    // CPU System Clock Postscaler (No CPU system clock divide)
#pragma config CP0 = OFF        // Code Protect (Program memory is not code-protected)

// CONFIG2L
#pragma config OSC = HSPLL      // Oscillator (HS+PLL, USB-HS+PLL)
#pragma config T1DIG = ON       // T1OSCEN Enforcement (Secondary Oscillator clock source may be selected)
#pragma config LPT1OSC = OFF    // Low-Power Timer1 Oscillator (High-power operation)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor (Enabled)
#pragma config IESO = ON        // Internal External Oscillator Switch Over Mode (Enabled)

// CONFIG2H
#pragma config WDTPS = 32768    // Watchdog Postscaler (1:32768)

// CONFIG3L
#pragma config DSWDTOSC = INTOSCREF// DSWDT Clock Select (DSWDT uses INTRC)
#pragma config RTCOSC = T1OSCREF// RTCC Clock Select (RTCC uses T1OSC/T1CKI)
#pragma config DSBOREN = ON     // Deep Sleep BOR (Enabled)
#pragma config DSWDTEN = ON     // Deep Sleep Watchdog Timer (Enabled)
#pragma config DSWDTPS = G2     // Deep Sleep Watchdog Postscaler (1:2,147,483,648 (25.7 days))

// CONFIG3H
#pragma config IOL1WAY = ON     // IOLOCK One-Way Set Enable bit (The IOLOCK bit (PPSCON<0>) can be set once)
#pragma config MSSP7B_EN = MSK7 // MSSP address masking (7 Bit address masking mode)

// CONFIG4L
#pragma config WPFP = PAGE_63   // Write/Erase Protect Page Start/End Location (Write Protect Program Flash Page 63)
#pragma config WPEND = PAGE_WPFP// Write/Erase Protect Region Select (valid when WPDIS = 0) (Page WPFP<5:0> through Configuration Words erase/write protected)
#pragma config WPCFG = OFF      // Write/Erase Protect Configuration Region (Configuration Words page not erase/write-protected)

// CONFIG4H
#pragma config WPDIS = OFF      // Write Protect Disable bit (WPFP<5:0>/WPEND region ignored)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>




/************************ HEADERS ****************************************/
#include "VT100.h"
#include <string.h>
#include "system.h"
#include "system_config.h"
#include "miwi/miwi_api.h"
#include <stdarg.h>
#include "lcd.h"
/************************** PROTOTYPES ************************************/





/************************** VARIABLES ************************************/
        
extern API_UINT16_UNION                 myPANID;        						// mon PANID
extern uint8_t                          myLongAddress[MY_ADDRESS_LENGTH];		// mon adresse IEEE
extern API_UINT16_UNION                 myShortAddress;                     	// mon adresse logique
extern ACTIVE_SCAN_RESULT               ActiveScanResults[ACTIVE_SCAN_RESULT_SIZE];		// table des actives scan

//#define NO_TERM
#define PSEUDO_MAX_LENGTH  8
#define MY_CHANNEL         17

#define DATA    0xAA
#define CMD     0x55

extern RECEIVED_MESSAGE  rxMessage;

char myPseudo[PSEUDO_MAX_LENGTH+1];


    
/****************************************************/
/*                   Prototypes                     */
/****************************************************/

void getPseudo(char *);
void RX(void);
void TX(void);
void broadcastData(char *,...);
void initChat(void);
void initNwk(void);



void main (void)
{

    // Initialisation Carte
    SYSTEM_Initialize();	

    // Initialisation Uart
    uartInitialize();

    // Identification console/VT100
    initChat();

    // Connexion réseau
    initNwk();

    while(1){
      RX();
      TX();
    }

}


/**
 * Initialisation du chat : message d'invitation et acquisition du pseudo
 */
void initChat(void){
#ifdef NO_TERM
    LCDBacklightON();
    memcpy(myPseudo, "bot", strlen("bot")+1);
    LCDDisplay((char *)"Pseudo : bot",0, true);
#else
    vT100ClearScreen();
    vT100SetCursorPos(0,0);
    uartPrint("Saisissez votre pseudo : ");
    getPseudo(myPseudo);	
    uartPrint("\r\n Bonjour : ");
    uartPrint(myPseudo);
    uartPrint("!\r\n");
#endif    
}


void initNwk(){
uint8_t respondingDevices;
bool found;    
uint8_t index;

MiApp_ProtocolInit(false);


if(MiApp_SetChannel(MY_CHANNEL) == false){			// Réglage pour le canal choisi
    #ifdef NO_TERM
        LCDDisplay((char *)"Err selection canal",0, true);
    #else
        uartPrint("Erreur : selection de canal");
    #endif
    goto fin;
}

respondingDevices = MiApp_SearchConnection(10,1L<<MY_CHANNEL);
found = false;
if(respondingDevices !=0){
    for(index = 0; index< respondingDevices;index++){
        if(found = (ActiveScanResults[index].PANID.Val == MY_PAN_ID))
            break;
    }
}
// found existing PAN controller
if(found){  
    MiApp_ConnectionMode(ENABLE_ACTIVE_SCAN_RSP);
    if(MiApp_EstablishConnection(index, CONN_MODE_DIRECT)==0xFF){
    #ifdef NO_TERM
        LCDDisplay((char *)"Err connexion refusee",0, true);
    #else
        uartPrint("Erreur : connexion refusee");
    #endif
        goto fin;
    }
    #ifdef NO_TERM
    LCDDisplay((char *)"Connexion OK",0, true);
    #else
        uartPrint("Connexion reussie sur PAN existant\n\r");
    #endif
// nobody    
}else{
    MiApp_ConnectionMode(ENABLE_ALL_CONN);
    if(!MiApp_StartConnection(START_CONN_DIRECT,0,0)){
    #ifdef NO_TERM
        LCDDisplay((char *)"Er : conn. refusee",0, true);
    #else
        uartPrint("Erreur : creation refusee");    
    #endif
        goto fin;
    }
    #ifdef NO_TERM
        LCDDisplay((char *)"Nouveau PAN !",0, true);
    #else
    uartPrint("Creation d'un nouveau PAN\n\r");
    #endif
}
#ifdef NO_TERM
    sprintf(LCDText,"Adresse : 0X%04x",myShortAddress);
    sprintf(&LCDText[16],"sur PAN : 0X%04x",MY_PAN_ID);
    LCD_Update();
#else
    uartPrint("Votre adresse est : 0x");   
    uartHexaPrint((uint8_t *)&myShortAddress,2);
    uartPrint("\r\n");  
#endif

    return;
    fin: while(1);
}

/**
 * Récupération du pseudo de l'utilisateur
 * @param pseudo : un tableau de 9 octets contenant le pseudo terminé par un 0 
 */
void getPseudo(char * pseudo){
    int i = 0;
    do{
    if(uartIsChar()){
        pseudo[i++] = uartRead(); 
    }
    }while((pseudo[i-1]!=0x0D)||(i>=PSEUDO_MAX_LENGTH));
    pseudo[i-1] = 0;
    
}


/**
 * Gestion des messages entrants
 */
void RX(void){
    if(MiApp_MessageAvailable()){       //Il y a un message dans la reception?
        uartPrint(rxMessage.Payload);   //Print du message
        MiApp_DiscardMessage();         //Clear la pile
    }
}

/**
 * Transmission d'un bufferMSG(message) via broadcast
 */
void BroadCast_Tx(void){
 
    char counterChar[32];
 
    MiApp_FlushTx();
    int i=0;

    sprintf(counterChar,"Salut a tous c'est %s",myPseudo);

    while(counterChar[i] != 0) MiApp_WriteData(counterChar[i++]);

    MiApp_WriteData(10);
    MiApp_WriteData(13);
    MiApp_WriteData(0); 

    MiApp_BroadcastPacket(false);
   
}

/**
 * Transmission d'un bufferMSG(message) via Unicast
 */
void UniCast_Tx(void){
    static int counter = 1;
    static int RB0state = 1;
    static int RB2state = 1;

    char bufferMSG[30];
    sprintf(bufferMSG, "UNICAST Nom : %s numero: %d", myPseudo, counter);

    int i = 0;

    if (PORTBbits.RB0 != RB0state) {       
        RB0state = PORTBbits.RB0;
        if (PORTBbits.RB0 == 0) {
            uartPrint(bufferMSG);
            uartPrint("\r\n");

            while (bufferMSG[i] != 0) {
                MiApp_WriteData(bufferMSG[i]);
                i++;
            }
            counter++;
            MiApp_WriteData(10);
            MiApp_WriteData(13);
            MiApp_WriteData(0); 
            
            uint16_t toAddr;
            
            
            if (myShortAddress.Val == 0x0000) {
                toAddr = 0x0100;
                uartPrint("envoi a 0x0100 ");
            } else if (myShortAddress.Val == 0x0100) {
                toAddr = 0x0200;
                uartPrint("envoi a 0x0200 ");
            } else if (myShortAddress.Val == 0x0200) {
                toAddr = 0x0000;
                uartPrint("envoi a 0x0000 ");
            }else{
                toAddr = myShortAddress.Val;
                uartPrint("probleme d'adresse");
            }
            MiApp_UnicastAddress((uint8_t * )&toAddr, false,false);    
        }
    }
    if (PORTBbits.RB2 != RB2state) {
        
        RB2state = PORTBbits.RB2;
        if (PORTBbits.RB2 == 0) {
            uartPrint(bufferMSG);
            uartPrint("\r\n");

            while (bufferMSG[i] != 0) {
                MiApp_WriteData(bufferMSG[i]);
                i++;
            }
            counter++;
            MiApp_WriteData(10);
            MiApp_WriteData(13);
            MiApp_WriteData(0); 
            
            uint16_t toAddr = 0x0000;
            
            
            if (myShortAddress.Val == 0x0000) {
                toAddr = 0x0200;
                uartPrint("envoi a 0x0200 ");
            } else if (myShortAddress.Val == 0x0100) {
                toAddr = 0x0000;
                uartPrint("envoi a 0x0000 ");
            } else if (myShortAddress.Val == 0x0200) {
                toAddr = 0x0100;
                uartPrint("envoi a 0x0100 ");
            }else{
                toAddr = myShortAddress.Val;
                uartPrint("probleme d'adresse");
            }
            MiApp_UnicastAddress((uint8_t * )&toAddr, false,false);    
        }
    }
}

/**
 * Fonction de transmission des données type broadcast: Envoie d'un message a tous
 * les dispositifs connectes dans le reseau. Ensuite, envoie d'un message via Unicast
 * selon RB0 ou RB2
 */

void TX(void){
    static int flag = 0;
    if(flag==0){
        BroadCast_Tx(); 
        flag=1;
    }
     
    MiApp_FlushTx();
    UniCast_Tx();
}






/**************************************************************
 *  
 * SY34
 * 
 * Les fonctions du fichier VT100.c permettent de proposer
 * quelques fonctionnalités graphique dans une console selon
 * le protocole VT100
 * 
 * prérequis : console.c de la MLA (V2016-8-8)
 * 
 * @Author : M. COLAS
 * @version : 1.0
 * 
 **************************************************************/


#include "VT100.h"
#include "console.h"
#include "system.h" 
#include <xc.h>






/**************************************/
/*** Initialisation de la liaison  ****/
/**************************************/
void uartInitialize(void) {
	TRISCbits.TRISC6 = 0;		// TX
	TRISDbits.TRISD2 = 1;		// RX
	BAUDCON1bits.BRG16 = 0;		// 8bits
	SPBRGH2 = 0;				//
	//SPBRG2 = 25;				// 19200 bauds	
    
    SPBRG2 = SYS_CLK_FrequencySystemGet()/16/19200-1;				// 19200 bauds	
	TXSTA2 = 0x24; 		 		// Async+HS+Tx On	
	RCSTA2=0x90;				// Rx On Active
	//RCSTA1bits.CREN = 1;		// Rx On	
	//RCSTA1bits.SPEN = 1;		// Active

	
}



/**************************************/
/*** Lire un Caractère             ****/
/**************************************/
uint8_t uartRead(void) {
	uint8_t val;
   	if(RCSTA2bits.OERR) {
        RCSTA2bits.CREN = 0;   // Si overrun, reset RX
        RCSTA2bits.CREN = 1;  
   	}

	val = RCREG2;
	uartWrite(val);
	if(val == 0x08) vT100EraseEndOfLine();	// gestion du backspace
	if(val == 0x0D) uartWrite(0x0A);		// gestion saut de ligne : ajout LF
	return val;
}


/**************************************/
/*** Erire un Caractère            ****/
/**************************************/
void uartWrite(uint8_t c) {
	while(TXSTA2bits.TRMT == 0);
	TXREG2 = c;
}

/**************************************/
/*** Ecrire une chaine             ****/
/**************************************/
void _uartPrint(char * str) {
	int i=0;
	while(str[i] != 0) uartWrite(str[i++]);
	}


/**************************************/
/*** Ecrire la valeur n octets     ****/
/*** en hexa (little-endian)       ****/
/**************************************/


void uartHexaPrint(uint8_t * val,uint8_t n){
	int i;
	uint8_t v;
	for(i = n-1;i >= 0;i--){
		v = (val[i]&0xF0)>>4;
		if(v <= 9)
			uartWrite(v + 48);
		else
			uartWrite(v -10 + 65);
		v = val[i]&0x0F;
		if(v <= 9)
			uartWrite(v + 48);
		else
			uartWrite(v - 10 + 65);

		
	}
}

/**************************************/
/*** VT100 effacement de l'écran    ***/
/***                                ***/
/**************************************/
void vT100ClearScreen(void){
    uartPrint("\x1b[2J");
}



/**************************************/
/*** VT100 définition de la fenêtre ***/
/*** de scrolling                   ***/
/**************************************/

void vT100DefScroll(uint8_t s,uint8_t e){

	char Cmd[] = "\x1b[00;00r";
	Cmd[2]+=s/10;
    Cmd[3]+=s%10;
    Cmd[5]+=e/10;
    Cmd[6]+=e%10;
    uartPrint(Cmd);
}



/**************************************/
/*** VT100 Scroll d'une ligne       ***/
/*** vers le bas                    ***/
/**************************************/

void vT100ScrollLine(void){
    uartPrint("\x1b[D");
}


/**************************************/
/*** VT100 effacement               ***/
/*** fin de ligne                   ***/
/**************************************/
void vT100EraseEndOfLine(void){
    uartPrint("\x1b[OK");
}



/**************************************/
/*** VT100 sauvegarde et            ***/
/*** restauration du curseur        ***/
/**************************************/
void vT100SaveAndRest(void){
    uartPrint("\x1b[s");
    uartPrint("\x1b[u");
}


/**************************************/
/*** VT100 placement curseur        ***/
/**************************************/

void vT100SetCursorPos(uint8_t r,uint8_t c){
	char Cmd[] = "\x1b[00;00f"; 	

	Cmd[2]+=r/10;
	Cmd[3]+=r%10;
	Cmd[5]+=c/10;
	Cmd[6]+=c%10;
	uartPrint(Cmd);

}


/**************************************/
/*** VT100 changement couleur       ***/
/**************************************/

void vT100SetColor(uint8_t color){
    char Cmd[] = "\x1b[00m";
 
    Cmd[2]+=color/10;
    Cmd[3]+=color%10;
}



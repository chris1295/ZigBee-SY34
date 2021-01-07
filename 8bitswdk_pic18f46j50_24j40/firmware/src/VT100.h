/******************************************************
 *
 * SY34
 *
 * Les fonctions du fichier VT100 permettent de proposer
 * quelques fonctionnalités graphique dans une console selon
 * le protocole VT100
 * 
 * prerequise : desactivation ENABLE_CONSOLE dans miwi_config.h de la MLA (V2016-8-8)
 *              
 * 
 * file: VT100   
 * 
 * @author: M. COLAS
 * @version : 1.0 
 *****************************************************/

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef VT100_H
#define	VT100_H

#include <xc.h>  
#include <stdint.h>
#include <stdbool.h>




/*********************************************
 *           Fonctions UART(2)             
 *********************************************/
void uartInitialize(void);
uint8_t uartRead(void);
void uartWrite(uint8_t c);
void _uartPrint(char * str);
void uartHexaPrint(uint8_t * val,uint8_t n);



/*********************************************
 *           Commandes VT100             
 *********************************************/
void vT100ClearScreen(void);
void vT100DefScroll(uint8_t s,uint8_t e);
void vT100ScrollLine(void);
void vT100EraseEndOfLine(void);
void vT100SaveAndRest(void);
void vT100SetCursorPos(uint8_t r,uint8_t c);
void vT100SetColor(uint8_t color);

#define uartPrint(x) _uartPrint((char*)x)
#define uartIsChar()	PIR3bits.RC2IF

#endif	/* VT100_H */


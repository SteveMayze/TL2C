/*
 * twi_slave.c
 *
 * Created: 18/02/2017 15:26:52
 * Author : Steve
 */ 

 #include <avr/io.h>
 #include <avr/interrupt.h>
 #include "twi_slave.h"
 
 // static unsigned char TWI_buffer[TWI_BUFFER_SIZE];
 static unsigned char TWI_Busy = 0;
 static unsigned char TWI_state = TWI_NO_STATE;  // State byte. Default set to TWI_NO_STATE.




 unsigned char TWI_isBusy(void){
	return TWI_Busy;
 }

 unsigned char TWI_Slave_Initialise( unsigned char TWI_ownAddress ) {

	TWSAM = 0;	// Not using the second addressing scheme
	TWSA = (TWI_ownAddress) | ( 1 << TWSA0 );
	for(int i=0; i<TWI_BUFFER_SIZE; i++){
		TWI_Buffer[i] = 0x00;
	}
	twi_buffer_ptr = 0;

	TWSCRA = 0;	// Reset the status register
	TWSCRA |= ( 1 << TWEN );
	TWSCRB = 0;

	return 0;
 }


 unsigned char TWI_Start(void){

	// Enable the various interrupts.
	TWSCRA |= ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
	TWSCRB = 0;

	return 0;
}

/************************************************************************/
/* ISR for the TWI Slave                                                */
/************************************************************************/
 ISR(TWI_SLAVE_vect) {

	TWI_statusReg_A.all = TWSSRA;

	if( TWI_statusReg_A.TWI_TWASIF ){ 
		if( TWI_statusReg_A.TWI_TWAS){
			// Send back the ACK and prepare to send or receive
			TWSCRB = 0x03;	// 0<<TWAA 1<<TWCMD1 1<<TWCMD0: ACK, 11=TWCMD
			if(TWI_statusReg_A.TWI_TWDIR){
				led_flag |= (1 << green_LED);
				TWSD = TWI_Buffer[twi_buffer_idx];
				TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
				TWI_statusReg_A.all = TWSSRA;
				if( TWI_statusReg_A.TWI_TWRA ){
					// STOP Detected
					TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
					TWSCRA |= ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
				} else {
					TWSCRA |= ( 1 << TWDIE ) | ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
				}
			} else {	// READ
				led_flag |= (1 << yellow_LED);
				TWI_Buffer[twi_buffer_ptr] = TWSD;
				TWSCRB = 0b00000011;
				TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
				TWSCRA |= ( 1 << TWDIE ) | ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
			}
		} else { // STOP
			TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
			TWSCRA |=  ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
		}
	} else {	// DATA
		if( TWI_statusReg_A.TWI_TWDIR){
			led_flag |= (1 << green_LED);
			TWSD = TWI_Buffer[twi_buffer_ptr];
			TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
			TWSCRA |= ( 1 << TWDIE ) | ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
		} else { // READ
			led_flag |= (1 << yellow_LED);
			TWI_Buffer[twi_buffer_ptr] = TWSD;
			TWSCRB = 0x03;
			TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
			TWSCRA |= ( 1 << TWDIE ) | ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
		}
	}
}
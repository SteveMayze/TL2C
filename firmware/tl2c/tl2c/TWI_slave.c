/*
 * twi_slave.c
 *
 * Created: 18/02/2017 15:26:52
 * Author : Steve
 */ 

 #include <avr/io.h>
 #include "twi_slave.h"

 // static unsigned char TWI_buffer[TWI_BUFFER_SIZE];
 static unsigned char TWI_Busy = 0;
 static unsigned char TWI_state = TWI_NO_STATE;  // State byte. Default set to TWI_NO_STATE.


 unsigned char TWI_isBusy(void){
	return TWI_Busy;
 }

 unsigned char TWI_Slave_Initialise( unsigned char TWI_ownAddress ) {

	TWSAM = 0;	// Not using the second addressing scheme
	TWSA |= (TWI_ownAddress) | ( 1 << TWSA0 );

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


ISR(TWI_SLAVE_vect) {

	PORTA ^= ( 1 << PORTA1 );

	// Case 1. Address packet accepted - Direction bit set.
	if ( ( TWSSRA >> TWASIF ) & 1) {
		if (( TWSSRA >> TWAS ) & 1) {	// 1 ::= ADDRESS DETECTION
			PORTA ^= ( 1 << PORTA2 );
			TWSCRB = ( 0x3 << TWCMD0 );
		} else {	// STOP ENCOUNTERED
			TWSCRB = ( 0x3 << TWCMD0 );
			return;
		}
	}

	if (( TWSSRA >> TWDIF ) & 1) { // Data bit set.
		if (( TWSSRA >> TWDIR ) & 1) { // 1 ::= Master READ
			TWSD = 0x5A;
			TWSCRB = ( 0x3 << TWCMD0 );
		} else {	// 0 ::= Master WRITE
			unsigned int x = TWSD;
			TWSCRB = ( 0x3 << TWCMD0 );
		}
		TWSCRA = 0;
		TWSCRA |= ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE );
	}

//	TWSSRA |= ( 1 << TWDIF ) | ( 1 << TWASIF );

}
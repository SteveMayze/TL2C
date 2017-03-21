/*
 * twi_slave.c
 *
 * Created: 18/02/2017 15:26:52
 * Author : Steve
 */ 

#include "common.h"
#include "twi_slave.h"

volatile unsigned char TWI_addr_mode = 0;


  unsigned char TWI_Slave_Initialise( unsigned char TWI_chipAddress ) {

	  TWSAM = 0;	// Not using the second addressing scheme
	  TWSA = ( TWI_chipAddress ) | ( 1 << TWSA0 );
	  TL2C_RegisterAddress = 0;
	  TWI_addr_mode = 1;
	  TL2C_Registers.TL2C_status_reg.all = 0;
	  TL2C_Registers.TL2C_config_reg.TL2C_Z1A = 1;
	  TL2C_Registers.TL2C_config_reg.TL2C_Z2A = 1;
	  TL2C_Registers.TL2C_config_reg.TL2C_Z3A = 0;
	  TL2C_Registers.TL2C_Zone1_On_Delay = 20;
	  TL2C_Registers.TL2C_Zone2_On_Delay = 10;
	  TL2C_Registers.TL2C_Zone3_On_Delay = 10;
	  TL2C_Registers.TL2C_I2C_Address = TWI_chipAddress;

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



unsigned char masterRead(unsigned char registerAddress, unsigned char *data){
	unsigned char result = 0;
	switch( registerAddress) {
		case TL2C_STATUS_REG:
		*data = TL2C_Registers.TL2C_status_reg.all;
		break;
		case TL2C_CONFIG_REG:
		*data = TL2C_Registers.TL2C_config_reg.all;
		break;
		case TL2C_ZONE1_ON_DELAY:
		*data = TL2C_Registers.TL2C_Zone1_On_Delay;
		break;
		case TL2C_ZONE2_ON_DELAY:
		*data = TL2C_Registers.TL2C_Zone2_On_Delay;
		break;
		case TL2C_ZONE3_ON_DELAY:
		*data = TL2C_Registers.TL2C_Zone3_On_Delay;
		break;
		case TL2C_I2C_ADDRESS:
		*data = TL2C_Registers.TL2C_I2C_Address;
		break;
		default:
		result = 1;
		*data = 0;
		break;
	}
	return result;
}

unsigned char masterWrite(unsigned char registerAddress, unsigned char twsd){
	unsigned char result = 0;
	switch( registerAddress ){
		case TL2C_STATUS_REG:
		TL2C_Registers.TL2C_status_reg.all = twsd;
		break;
		case TL2C_CONFIG_REG:
		TL2C_Registers.TL2C_config_reg.all = twsd;
		break;
		case TL2C_ZONE1_ON_DELAY:
		TL2C_Registers.TL2C_Zone1_On_Delay = twsd;
		break;
		case TL2C_ZONE2_ON_DELAY:
		TL2C_Registers.TL2C_Zone2_On_Delay = twsd;
		break;
		case TL2C_ZONE3_ON_DELAY:
		TL2C_Registers.TL2C_Zone3_On_Delay = twsd;
		break;
		case TL2C_I2C_ADDRESS:
		TL2C_Registers.TL2C_I2C_Address = twsd;
		break;
		default:
		result = 1;
		break;
	}
	return result;
}



/************************************************************************/
/* ISR for the TWI Slave                                                */
/************************************************************************/
 ISR(TWI_SLAVE_vect) {

	unsigned char result;
	TWI_statusReg_A.all = TWSSRA;
	unsigned char data = TWSD;

	if( TWI_statusReg_A.TWI_TWASIF ){ 
		if( TWI_statusReg_A.TWI_TWAS){
			// Send back the ACK and prepare to send or receive
			TWSCRB = 0b00000011;	// 0<<TWAA 1<<TWCMD1 1<<TWCMD0: ACK, 11=TWCMD
			if(TWI_statusReg_A.TWI_TWDIR){	// master READ
				led_flag |= (1 << green_LED);
				result = masterRead(TL2C_RegisterAddress++, &data);
				TWSD = data;
				TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
				TWI_statusReg_A.all = TWSSRA;
				if( TWI_statusReg_A.TWI_TWRA ){
					// STOP Detected
					TWI_addr_mode = 1;
					TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
					TWSCRA |= ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
				} else {
					TWSCRA |= ( 1 << TWDIE ) | ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
				}
			} else {	// master WRITE
				led_flag |= (1 << yellow_LED);
				if( TWI_addr_mode ) {
					TL2C_RegisterAddress = 0x00;
				} else {
					result = masterWrite(TL2C_RegisterAddress++, data);
				}
				TWSCRB = 0b00000011;
				TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
				TWSCRA |= ( 1 << TWDIE ) | ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
			}
		} else { // STOP
			if(TWI_statusReg_A.TWI_TWDIR){
				TL2C_RegisterAddress = 0x00;
			}			
			TWI_addr_mode = 1;
			TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
			TWSCRA |=  ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
		}
	} else {	// DATA
		if( TWI_statusReg_A.TWI_TWDIR){	// master READ
			led_flag |= (1 << green_LED);
			// TWSD = TWI_Buffer[twi_buffer_ptr];
			result = masterRead(TL2C_RegisterAddress++, &data);
			TWSD = data;
			if( TL2C_RegisterAddress > 5 ){
				TL2C_RegisterAddress = 0x00;
				TWI_addr_mode = 1;
				TWSCRB = 0b00000110;
				TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
				TWSCRA |=  ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
			} else {
				TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
				TWSCRA |= ( 1 << TWDIE ) | ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
			}
		} else { // master WRITE
			led_flag |= (1 << yellow_LED);
			if( TWI_addr_mode ) {
				TL2C_RegisterAddress = data;
				TWI_addr_mode = 0;
			} else {
				result = masterWrite(TL2C_RegisterAddress++, data);
			}
			if( TL2C_RegisterAddress > 6 ){
				TL2C_RegisterAddress = 0x00;
				TWI_addr_mode = 1;
				TWSCRB = 0b00000110;
				TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
				TWSCRA |=  ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
			} else {
				TWSCRB = 0b00000011;
				TWSSRA = (1<<TWDIF)|(1<<TWASIF);	// Release the SLC
				TWSCRA |= ( 1 << TWDIE ) | ( 1 << TWASIE ) | ( 1 << TWEN ) | ( 1 << TWSIE ) ;
			}
		}
	}
}
/*
 * tl2c.c
 *
 * Created: 18/02/2017 15:26:52
 * Author : Steve
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include "common.h"
#include "TWI_slave.h"


// volatile unsigned char TL2C_pir_interrupt;
volatile unsigned char timer_delay = 0;
volatile union TL2C_status_reg_t TL2C_pir_state;

int main(void)
{
    /* Replace with your application code */

	// Outputs
	// PA0 - UG Untergeschoss relay
	// PA1 - EG	Erdgeschoss relay
	// PA2 - OG	Obergeschoss relay

	// Inputs 
	// PA3 - UG Untergeschoss PIR signal
	// PA4 - EG Erdgeschoss PIR signal
	// PA5 - OG Obergeschoss PIR signal

	// Interrupt (Driver)
	// PA6 - General purpose interrupt output


#define CTC1_MODE	// Testing the timers and interrupts

// The the data direction for the relay outputs
DDRA = 0;
DDRA |= ( 1 << PORTA0 ) | ( 1 << PORTA1 ) | ( 1 << PORTA2 ) | (1 << PORTA6);
PUEA = 0;
PUEA |= ( 1 << PUEA5) | ( 1 << PUEA4) | ( 1 << PUEA3);
// Set the Pin Change interrupts for
PCMSK0 |=   (1<<PCINT5)| (1<<PCINT4)| (1<<PCINT3); // 0b00111000;
GIMSK |= ( 1<<PCIE0 );

#ifdef CTC1_MODE
	// This is the CTC mode whereby the counter registers are are set and a
	// Wave Generator is created. In this example only the OCR0A is used, It
	// is possible also to configure the OCR0B as well.
	// unsigned int startValue = 0x03D0;
	TCCR1A  = 0;										// Reset the operation
	TCCR1B  |=  ( 1 << WGM12 );							// CTC operation
	TCCR1B  |=  ( 5 << CS10  );							// 1024 Pre-scaler
	OCR1AH = 0x03;										// Set the start value - ~0.5Hz
	OCR1AL = 0xD0;										// 16 bit register ... write the high byte first!
	TIMSK |= ( 1 << OCIE1A );							// Enable the interrupt on OCR0A
#endif


#ifdef CTC_MODE
	// This is the CTC mode whereby the counter registers are are set and a
	// Wave Generator is created. In this example only the OCR0A is used, It
	// is possible also to configure the OCR0B as well.
	TCCR0A  = 0;										// Reset the operation
	TCCR0A  |=  ( 1 << WGM01 );							// CTC operation
	TCCR0B  |=  ( 5 << CS00  );							// 1024 Pre-scaler
	OCR0A = 0xF4;									// Set the start value
	TIMSK |= ( 1 << OCIE0A );							// Enable the interrupt on OCR0A
#endif

#ifdef NORMAL_MODE
	// In normal mode, only the TCNT0 needs to be set ( as well as the pre-scaler).
	unsigned int startValue = 0xFF;
	TCCR0A  = 0;										// Reset the operation
	TCCR0B  |=  ( 5 << CS00  );							// 1024 Pre-scaler
	TCNT0  = startValue;								// Set the start value
	TIMSK |= ( 1 << TOIE0 );							// Enable the over flow interrupt
#endif

	PORTA &= ~( 7 << PORTA0 );	// Turn off ALL indicator LEDs.
	led_flag = 0;
	TL2C_Relay_ctl.relay_state.TL2C_INT = 0;
	// TL2C_pir_interrupt = 0;
	TL2C_Registers.TL2C_status_reg.TL2C_PINT = 0;
	TWI_Slave_Initialise( 0x40 );

	TL2C_Relay_ctl.relay1_counter = TL2C_Registers.TL2C_Zone1_On_Delay;
	TL2C_Relay_ctl.relay2_counter = TL2C_Registers.TL2C_Zone2_On_Delay;
	TL2C_Relay_ctl.relay3_counter = TL2C_Registers.TL2C_Zone3_On_Delay;

	sei();

    TWI_Start();
    while (1) 
    {
		// if( TL2C_pir_interrupt ){
		if( TL2C_Registers.TL2C_status_reg.TL2C_PINT ){
			// Here we are confident that there has been a pin change. We have not
			// clarified exactly which pin has changed.

			// If the Zone activate bit is set OR the associated bit in the 
			// status register, then consider this as ON.
			if( TL2C_Registers.TL2C_config_reg.TL2C_Z1A || TL2C_pir_state.TL2C_Z1F ){	// UG - Zone 1
			    TL2C_pir_state.TL2C_Z1F = 0;
			    TL2C_Registers.TL2C_status_reg.TL2C_Z1F = 1;
				TL2C_Relay_ctl.relay_state.TL2C_RLY_UG = 1;
				TL2C_Relay_ctl.relay1_counter = TL2C_Registers.TL2C_Zone1_On_Delay;
			}
			if( TL2C_Registers.TL2C_config_reg.TL2C_Z2A || TL2C_pir_state.TL2C_Z2F){	// EG - Zone 2
			    TL2C_pir_state.TL2C_Z2F = 0;
			    TL2C_Registers.TL2C_status_reg.TL2C_Z2F = 1;
				TL2C_Relay_ctl.relay_state.TL2C_RLY_EG = 1;
				TL2C_Relay_ctl.relay2_counter = TL2C_Registers.TL2C_Zone2_On_Delay;
			}
			if(TL2C_Registers.TL2C_config_reg.TL2C_Z3A || TL2C_pir_state.TL2C_Z3F){	// OG - Zone 3
			    TL2C_pir_state.TL2C_Z3F = 0;
			    TL2C_Registers.TL2C_status_reg.TL2C_Z3F = 1;
				TL2C_Relay_ctl.relay_state.TL2C_RLY_OG = 1;
				TL2C_Relay_ctl.relay3_counter = TL2C_Registers.TL2C_Zone3_On_Delay;
			}
			// TL2C_pir_interrupt = 0;
			TL2C_Registers.TL2C_status_reg.TL2C_PINT = 0;

			// Raise the Interrupt back to the Master
			if( (TL2C_Relay_ctl.relay_state.all & 0b00000111)){
				TL2C_Registers.TL2C_status_reg.TL2C_RINT = 1;
				TL2C_Relay_ctl.relay_state.TL2C_INT = 1;
			}
		}

		// Every pulse cycle...
		if( led_flag){	// The heart beat is used to keep the time for the system.	

			// If the relay is set, then count down.
			if((!TL2C_Registers.TL2C_config_reg.TL2C_Z1A) && TL2C_Relay_ctl.relay_state.TL2C_RLY_UG){
				TL2C_Relay_ctl.relay1_counter--;
				if( !TL2C_Relay_ctl.relay1_counter ){
					TL2C_Relay_ctl.relay_state.TL2C_RLY_UG =  0;
					TL2C_Registers.TL2C_status_reg.TL2C_Z1F = 0;
					TL2C_Relay_ctl.relay1_counter = TL2C_Registers.TL2C_Zone1_On_Delay;
				}
			}

			if((!TL2C_Registers.TL2C_config_reg.TL2C_Z2A) && TL2C_Relay_ctl.relay_state.TL2C_RLY_EG){
				TL2C_Relay_ctl.relay2_counter--;
				if( !TL2C_Relay_ctl.relay2_counter ){
					TL2C_Relay_ctl.relay_state.TL2C_RLY_EG = 0;
					TL2C_Registers.TL2C_status_reg.TL2C_Z2F = 0;
					TL2C_Relay_ctl.relay2_counter = TL2C_Registers.TL2C_Zone2_On_Delay;
				}
			}

			if((!TL2C_Registers.TL2C_config_reg.TL2C_Z3A) && TL2C_Relay_ctl.relay_state.TL2C_RLY_OG){
				TL2C_Relay_ctl.relay3_counter--;
				if( !TL2C_Relay_ctl.relay3_counter ){
					TL2C_Relay_ctl.relay_state.TL2C_RLY_OG = 0;
					TL2C_Registers.TL2C_status_reg.TL2C_Z3F = 0;
					TL2C_Relay_ctl.relay3_counter = TL2C_Registers.TL2C_Zone3_On_Delay;
				}
			}
			unsigned char state = PORTA & 0b10111000;
			PORTA = state | TL2C_Relay_ctl.relay_state.all;

// 			if( (led_flag >> red_LED)&1 ){
// 			   PORTA ^= (1 << PORTA0);
// 			}
// 			if( (led_flag >> yellow_LED)&1 ){
// 			   PORTA ^= (1 << PORTA1);
// 			}
// 			if( (led_flag >> green_LED) & 1 ){
// 			   PORTA ^= (1 << PORTA2);
// 			}

			led_flag = 0;
		}
    }
}


ISR(PCINT0_vect){
	// unsigned char enabled = (3>>(TL2C_Registers.TL2C_config_reg.all & 0b00111000));
	// TL2C_Registers.TL2C_status_reg.all = (PINA >> 3) & (TL2C_Registers.TL2C_config_reg.all & 0b00000111);

	// Shift the three input pins three bits to the right
	// Shift the three enable bits four bits to the right
	// AND the result to ensure that all enabled bits are allowed to be registered.
	// TL2C_Registers.TL2C_status_reg.all = (((PINA >> 3) ^ 0xFF) & (TL2C_Registers.TL2C_config_reg.all >> 4));
	TL2C_pir_state.all = (((PINA >> 3) ^ 0xFF) & (TL2C_Registers.TL2C_config_reg.all >> 4));
	TL2C_Registers.TL2C_status_reg.TL2C_PINT = 1;
	// TL2C_pir_interrupt = 1;
}

#ifdef CTC1_MODE
ISR(TIM1_COMPA_vect) {
	// OCR0A = startValue;	// This value does not have to be reset like in Normal Mode.
	led_flag |= (1 << red_LED);
	
}
#endif

#ifdef CTC_MODE
ISR(TIM0_COMPA_vect) {
	// OCR0A = startValue;	// This value does not have to be reset like in Normal Mode.
	// led_flag |= (1 << green_LED);
	// led_flag |= (1 << red_LED);
	timer_delay++;
	if(timer_delay > 3 ){
		led_flag |= (1 << red_LED);
		timer_delay = 0;
	}
	
}
#endif

#ifdef NORMAL_MODE
ISR(TIM0_OVF_vect) {
	TCNT0  = startValue;	// This value must be reset each time to keep the frequency
	//led_flag |= (1 << red_LED);
}
#endif


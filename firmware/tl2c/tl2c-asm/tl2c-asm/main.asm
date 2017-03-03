;
; tl2c-asm.asm
;
; Created: 24/02/2017 18:00:31
; Author : Steve Mayze
;


; The inc file is located in
; C:\Program Files (x86)\Atmel\Studio\packs\atmel\ATtiny_DFP\1.1.102\avrasm\inc
.INCLUDE "tn20def.inc"

.EQU TL2C_default_slave_address = 0x40
.EQU TL2C_default_delay = 10	;	The default delay to place into the configuration registers.

.EQU red_LED = 0x01
.EQU yellow_LED = 0x02
.EQU green_LED = 0x4

.EQU TL2C_Z1F = 0		; TL2C Zone 1 status flag
.EQU TL2C_Z2F = 1		; TL2C Zone 2 status flag
.EQU TL2C_Z3F = 2		; TL2C Zone 3 status flag

.EQU TL2C_Z1A = 0		; TL2C Zone 1 Activation flag
.EQU TL2C_Z2A = 1		; TL2C Zone 2 Activation flag
.EQU TL2C_Z3A = 2		; TL2C Zone 3 Activation flag

.EQU TL2C_PIR1E = 4		; TL2C Zone 1 PIR13 Enable Flag
.EQU TL2C_PIR2E = 5		; TL2C Zone 2 PIR13 Enable flag
.EQU TL2C_PIR3E = 6		; TL2C Zone 3 PIR13 Enable flag



.EQU TWI_IDLE = 0
.EQU TWI_ADDRESS_RECEIVED = 1
.EQU TWI_REGISTER_ADDRESS = 2
.EQU TWI_MASTER_WRITE = 3
.EQU TWI_MASTER_READ = 4


.ORG 0
	rjmp reset

.ORG OC0Aaddr
	rjmp isr_tov

.ORG TWIaddr
	rjmp isr_TWI_Handler

.DSEG
led_flag:	.BYTE 1			; Flag for the timer overlfow to toggle the LED
TWI_State: .BYTE 1

TL2C_STATUS: .BYTE 1			;	TL2C Status Register
TL2C_CONFIG: .BYTE 1			;	TL2C Configuration Register
TL2C_Z1ON: .BYTE 1			;	TL2C Zone 1 ON Delay - Minutes
TL2C_Z2ON: .BYTE 1			;	TL2C Zone 2 ON Delay - Minutes
TL2C_Z3ON: .BYTE 1			;	TL2C Zone 3 ON Delay - Minutes
TL2C_ADDRESS: .BYTE 1		;	TL2C I2C COnfigurable Address


.CSEG
.ORG INT_VECTORS_SIZE

// ===========================================================================
// Cold Start
reset:

; Initialise the IO
	ldi r16, 1<<PORTA0 | 1<<PORTA1 | 1<<PORTA2	; Enable PORTA[0:2] as output
	out DDRA, r16								; Set the Direction for PORTA[0:2] to output

; Initialise the TIMER0 to interrupt on CTC0
	ldi r16, 1<<WGM01							; Set the wave generator to CTC
	out TCCR0A, r16
	ldi r16, 0x05<<CS00							; 1024 Pre-scaler
    out TCCR0B, r16
	ldi r16, 0xFF								; Set the start value
	out OCR0A, r16
	ldi r16, 1<<TOV0							; Clear pending interrupts/
	out TIFR, r16
	ldi r16, 1<<OCIE0A							; Enable the interrupt on OCR0A (CTC 0 overflow)
	out TIMSK, r16

	ldi r16, 0x00								; initialise the toggle flag
	sts led_flag, r16							; Using a byte instead of keeping it all in the registers
												; to show-case the use of .BYTE.

; Initialise the TL2C
	ldi r16, 0x00								; Set the status register to all OFF
	sts TL2C_STATUS, r16
	ldi r16, 1<<TL2C_PIR1E | 1<<TL2C_PIR2E		; Enable zones 1 and 2 as a default
	sts TL2C_CONFIG, r16	
	ldi r16, TL2C_default_delay					; Set the default delay for each of the zones.
	sts TL2C_Z1ON, r16
	sts TL2C_Z2ON, r16
	sts TL2C_Z3ON, r16
	ldi r16, TL2C_default_slave_address			; Configure the default slave address
	sts TL2C_ADDRESS, r16

// ===========================================================================
// Warm Start
warm_boot:
; Initialise the Two Wire Slave Module
	ldi r16, 0x00								; We are not using the Addressing Mask
	out TWSAM, r16
	ldi r16, TL2C_ADDRESS	| 1<<TWSA0			; Set the slave address - also set the General call address flg
	out TWSA, r16

	ldi r16, 1<<TWEN							; Enable the Two Wire module - but not the interrupts just yet.
	out TWSCRA, r16

; Enable the global interrupts
	sei											; Enable interrupts

; Finish the configurtation of the Two Wire module
	ldi r16, TWI_IDLE							; Set the state of the TWI as idle i.e. waiting for a START
	sts TWI_State, r16
	ldi r16, 1<<TWASIE | 1<<TWEN | 1<<TWSIE 	; Enable the TWI Address/Stop Interrupt, TWI Interface, TWI Stop Interrupt
	out TWSCRA, r16
	ldi r16, 0									; Reset any commands in the TWI Status Register B
	out TWSCRB, r16

; ============================================================================
;	MAIN Program Body
; ============================================================================
blinky:
	lds r16, led_flag
	cpi r16, 0x00								; If the toggle flag is true, then toggle the LED
	breq blinky

	ldi r17, 0x00								; Reset the LED flag
	sts led_flag, r17

case_red:
	mov r17, r16
	andi r17, red_LED
	cpi r17, 0x00							; Case RED
	breq case_yellow
	rcall toggle_RED

case_yellow:
	mov r17, r16
	andi r17, yellow_LED
	cpi r17, 0x00							; Case YELLOW
	breq case_green
	rcall toggle_YELLOW

case_green:
	mov r17, r16
	andi r17, green_LED
	cpi r17, 0x00							; Case GREEN
	breq default
	rcall toggle_GREEN
default:
	rjmp blinky

// ===========================================================================
// Sub-routines

toggle_RED:
	push r16
	push r17
	ldi r16, red_LED
	in r17, PORTA			; Read the state of PORTA
	eor r17, r16			; Toggle the PORTA with the red_LED
	out PORTA, r17			; Wirte out the result
	pop r17
	pop r16
	ret

toggle_YELLOW:
	push r16
	push r17
	ldi r16, yellow_LED
	in r17, PORTA			; Read the state of PORTA
	eor r17, r16			; Toggle the PORTA with the yellow_LED
	out PORTA, r17			; Wirte out the result
	pop r17
	pop r16
	ret

toggle_GREEN:
	push r16
	push r17
	ldi r16, green_LED
	in r17, PORTA			; Read the state of PORTA
	eor r17, r16			; Toggle the PORTA with the green_LED
	out PORTA, r17			; Wirte out the result
	pop r17
	pop r16
	ret

// ===========================================================================
// Interrupt service routine for handingling the CTC0 overflow
isr_tov:
	push r18
	push r19

	ldi r19, red_LED		; Set the RED LED, but don't destroy any other possible flags.
	lds r18, led_flag
	or r18, r19
	sts led_flag, r18

	pop r19
	pop r18
	reti


isr_TWI_Handler:
	push r18
	push r19
	push r20

	ldi r19, yellow_LED		; Set the YELLOW LED, but don't destroy any other possible flags.
	lds r18, led_flag
	or r18, r19
	sts led_flag, r18

	in r18, TWSSRA
	; sbrc r18, TWASIF
	sbrc r18, TWAS
	rjmp address_detected 						; 1 = Address/Stop Interrupt
	sbrc r18, TWDIF
	rjmp data_interrupt						; 1 = Data Interrupt

address_stop:
	sbrc r18, TWAS
	rjmp address_detected					; 1 = Address or STOP
	; Stop detected
	ldi r20, 1<<TWASIE | 1<<TWEN | 1<<TWSIE
	out TWSCRA, r20
	ldi r20,  1<<TWCMD1 | 0<<TWCMD0	
	out TWSCRB, r20
	rjmp done

data_interrupt:
	sbrc r18, TWDIR							; 1 = Master Read
	rjmp master_read
	; master write
	in r19, TWSD
	; sts tl2c_register_addr, r19

	ldi r18, 1<<TWDIF | 1<<TWASIF	; Reset the flags
	out TWSSRA, r20

	ldi r20,  1<<TWAA| 1<<TWCMD1 | 0<<TWCMD0	; Send NACK
	out TWSCRB, r20
	ldi r20, 1<<TWASIE | 1<<TWEN | 1<<TWSIE
	out TWSCRA, r20
	rjmp done


address_detected:
	ldi r20, TWI_ADDRESS_RECEIVED
	sts TWI_State, r20

	ldi r18, 1<<TWDIF | 1<<TWASIF	; Reset the flags
	out TWSSRA, r20

	ldi r20,  1<<TWCMD1 | 1<<TWCMD0	; Send ACK, then receive next byte (Register address)
	out TWSCRB, r20

	ldi r20, 1<<TWDIE | 1<<TWASIE | 1<<TWEN | 1<<TWSIE 		; Enable
	out TWSCRA, r20
	rjmp done


master_read:
	ldi r19, green_LED						; Set the GREEN LED, but don't destroy any other possible flags.
	lds r20, led_flag
	or r20, r19
	sts led_flag, r20

wait:
	ldi r20, 0xA9
	out TWSD, r20

	ldi r18, 1<<TWDIF | 1<<TWASIF	; Reset the flags
	out TWSSRA, r20
	ldi r20, 1<<TWAA |  1<<TWCMD1 | 0<<TWCMD0	; Send NACK
	out TWSCRB, r20

	ldi r20, 1<<TWDIE |1<<TWSIE |1<<TWASIE | 1<<TWEN | 1<<TWSIE 		; Enable
	out TWSCRA, r20
	; rjmp done


done:
	pop r20
	pop r19
	pop r18
	reti
	

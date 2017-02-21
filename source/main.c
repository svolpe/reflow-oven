//           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//                   Version 2, December 2004

//Copyright (C) 2011 Nicol�s Kipreos <nkipreos@gmail.com>

//Everyone is permitted to copy and distribute verbatim or modified
//copies of this license document, and changing it is allowed as long
//as the name is changed.

//           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//  TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

// 0. You just DO WHAT THE FUCK YOU WANT TO.

#include <msp430.h>
#include <stdint.h>
#include <stdlib.h>
#include "msp430g2553.h"


//In uniarch there is no more signal.h to sugar coat the interrupts definition, so we do it here
#define interrupt(x) void __attribute__((interrupt (x)))

#define 	UART_SEL   P1SEL
#define 	UART_SEL2  P1SEL2
#define 	UART_DIR   P1DIR
#define 	UART_IN    P1IN
#define 	UART_OUT   P1OUT
#define 	UART_REN   P1REN
#define     TXD        BIT2                     // TXD on P1.2
#define     RXD        BIT1                     // RXD on P1.1
#define		RELAY	   BIT7						// RELAY on P1.7
#define		LED1	   BIT0						// RELAY on P1.7
#define		LED2	   BIT6						// RELAY on P1.7

//Defines to help understand what is attached to each port
#define LED_DIR P1DIR
#define LED_OUT P1OUT


long tempCalibrated;

void timer_init();
void setup_adc();
void uart_send_char(char character);
void uart_enable();
void timer_init();
void timer_start();

void int_to_str(int nbr, char *res)
{
  int   div;
  int   len;
  int   i;


   i = 0;
  while (i < 3)
    res[i++] = '\0';
  res[3] = '\0';
  i = 0;
  div = 1;
  len = 1;
  while (nbr / div >= 10)
    {
      div *= 10;
      len++;
    }
  while (len)
    {
      res[i++] = '0' + (nbr / div);
      len--;
      nbr %= div;
      div /= 10;
    }

}

void sendChar(unsigned char ch)
{
	while(!(IFG2&UCA0TXIFG));
	UCA0TXBUF=ch;
}

void sendStr(char *string)
{
	while(!((*string) == '\0'))
	{
	sendChar(*string);
	string++;
	}
	sendChar('\r');
	sendChar('\n');
}

void led_init()
{
	//Set the direction as output
	LED_DIR |= RELAY;
	LED_DIR |= LED1;
	LED_DIR |= LED2;
	//Start with the red led on and relay off.
	LED_OUT &= ~RELAY;
}


void init()
{
	//Stop the watchdog
	WDTCTL = WDTPW + WDTHOLD;

	BCSCTL1 = 0x07;                    // Set range
	DCOCTL = 0x4F;
	  //BCSCTL2 &= ~(DIVS_3);                     // SMCLK = DCO = 1MHz

	//Inits the different parts
	led_init();
	uart_enable();
	setup_adc();
	timer_init();
	//Enable global interrupts
	_BIS_SR(GIE);
}


int main()
{

	init();
	timer_start();
	//We enter the LPM4 Low Power Mode, which leaves nothing running
	//This way, the CPU will be off until the button is pressed
	//_BIS_SR(LPM1_bits);
	while(1);
//	return 0;
}


void uart_transmit_data(uint8_t length, uint8_t *tx_data)
{
	uint8_t current_byte = 0;
	while (current_byte < length)
	{
		uart_send_char(tx_data[current_byte++]);
	}
	
}


void uart_send_char(char character)
{
	//uart_transmit_init();

	while(! (UC0IFG & UCA0TXIFG));

	UCA0TXBUF = character;

	UC0IFG &= ~UCA0TXIFG;
	//LED_OUT ^= LED_GREEN;
}

void uart_enable()
{
	UART_DIR |= TXD;
	UART_DIR &= ~RXD;
	UART_SEL |= TXD + RXD;
	UART_SEL2 |= TXD + RXD;

	UCA0CTL1 |= UCSWRST; //en modo standby mientras se setean datos
	UCA0CTL1 |= UCSSEL_2; //se elige smclk para el clock (1000000 Hz)
	//UCABR son 2 bytes separados en los bytes que vienen
	//Para generar el baudrate querido, mirar la tabla en el users guide
	// Aca usamos 19230 (Clk/uca0br) = (1000000/52) = 19230
	UCA0BR0 = 104;
	UCA0BR1 = 0;
	UCA0MCTL = UCBRS0; //revisar users guide
	UCA0CTL1 &= ~UCSWRST;//sacamos del standby
	IE2 |= UCA0RXIE;//habilitamos la interrupcion de recepcion
}

void setup_adc()
{
	//ADC10CTL1 = (0x40 << 8) + 0xF8;
	//ADC10CTL0 = SREF_0 + ADC10SHT_3 + ADC10ON + ADC10IE;

    /* disable ADC10 during initialization */
    ADC10CTL0 &= ~ENC;

    /*
     * Control Register 0
     *
     * ~ADC10SC -- No conversion
     * ~ENC -- Disable ADC
     * ~ADC10IFG -- Clear ADC interrupt flag
     * ~ADC10IE -- Disable ADC interrupt
     * ADC10ON -- Switch On ADC10
     * ~REFON -- Disable ADC reference generator
     * ~REF2_5V -- Set reference voltage generator = 1.5V
     * ~MSC -- Disable multiple sample and conversion
     * ~REFBURST -- Reference buffer on continuously
     * ~REFOUT -- Reference output off
     * ~ADC10SR -- Reference buffer supports up to ~200 ksps
     * ADC10SHT_0 -- 4 x ADC10CLKs
     * SREF_0 -- VR+ = VCC and VR- = VSS
     *
     * Note: ~<BIT> indicates that <BIT> has value zero
     */
//    ADC10CTL0 = ADC10ON + ADC10SHT_0 + REFON +  ~REF2_5V + SREF_1;
    ADC10CTL0 = ADC10ON + ADC10SHT_3 + SREF_0;

    //   ~REFON -- Disable ADC reference generator
 //        * ~REF2_5V/
    /*
     * Control Register 1
     *
     * ~ADC10BUSY -- No operation is active
     * CONSEQ_0 -- Single channel single conversion
     * ADC10SSEL_0 -- ADC10OSC
     * ADC10DIV_0 -- Divide by 1
     * ~ISSH -- Input signal not inverted
     * ~ADC10DF -- ADC10 Data Format as binary
     * SHS_0 -- ADC10SC
     * INCH_4 -- ADC Channel 4
     *
     * Note: ~<BIT> indicates that <BIT> has value zero
     */
    ADC10CTL1 = CONSEQ_0 + ADC10SSEL_0 + ADC10DIV_0 + SHS_0 + INCH_4;

    /* Analog (Input) Enable Control Register 0 */
    ADC10AE0 = 0x10;

    /* enable ADC10 */
    ADC10CTL0 |= ENC;

    /* USER CODE START (section: ADC10_graceInit_epilogue) */
    /* User code */
    /* USER CODE END (section: ADC10_graceInit_epilogue) */
}


////Port 1 interrupt, which toggles the LEDs
//#pragma vector=PORT1_VECTOR
//__interrupt void PORT1_ISR() {
//}


void timer_init()
{
	//Select ACLK, TimerA counter divisor in 1
	TACTL |= TASSEL_2 + ID_3;
	//Enables the CCR0 interrupt
	TACCTL0 |= CCIE;
}

void timer_start()
{
	TACTL |= MC_1;
	TACCR0 = 0x00FF;
}

//CCR0 timer interrupt, which toggles the LEDs
#pragma vector=TIMER0_A0_VECTOR
__interrupt void TIMER0_ISR() {
}

#pragma vector=PORT1_VECTOR
__interrupt void PORT1_ISR() {
}
#pragma vector=PORT2_VECTOR
__interrupt void PORT2_ISR() {
}
#pragma vector=ADC10_VECTOR
__interrupt void ADC10_ISR() {
}

#pragma vector=USCIAB0TX_VECTOR
__interrupt void USCIAB0TX_ISR() {
}

#pragma vector=TIMER0_A1_VECTOR
__interrupt void TIMER0_A1_ISR() {
}

#pragma vector=WDT_VECTOR
__interrupt void WDT_ISR() {
}

#pragma vector=COMPARATORA_VECTOR
__interrupt void COMPARATORA_ISR() {
}

#pragma vector=TIMER1_A1_VECTOR
__interrupt void TIMER1_A1_ISR() {
}

#pragma vector=TIMER1_A0_VECTOR
__interrupt void TIMER1_A0_ISR() {
}

#pragma vector=NMI_VECTOR
__interrupt void NMI_ISR() {
}

#pragma vector=USCIAB0RX_VECTOR
__interrupt void UART_RCV_ISR()
{
	uint8_t rx_byte = UCA0RXBUF;
	char temperature[4];
	if(rx_byte == 'b')
	{
		LED_OUT |= RELAY;
	}
	else if(rx_byte == 'o')
	{
		LED_OUT &= ~RELAY;
	}
	else if(rx_byte == 'a')
	{
		// ADC Start Conversion - Software trigger
//		ADC10CTL0 |= ADC10SC;
		unsigned char count;
		tempCalibrated = 0;
		for (count = 0; count < 10; count++)
		{
			ADC10CTL0 |= ENC + ADC10SC;               // Sampling and conversion start
		// Loop until ADC10IFG is set indicating ADC conversion complete
			while ((ADC10CTL0 & ADC10IFG) == 0);

		// Read ADC conversion result from ADC10MEM
		//__delay_cycles(1000);
			tempCalibrated += ADC10MEM;
		}
		tempCalibrated /= 10;
		//tempCalibrated *= 1.5/(2^10);
  		int_to_str(tempCalibrated, temperature);
  		sendStr(temperature);
		//printfssv("%i\n\r",tempCalibrated);
	}
	else if(rx_byte == 'g')
	{
		LED_OUT |= LED1;
	}
	else if(rx_byte == 'd')
	{
		LED_OUT &= ~LED1;
	}
}

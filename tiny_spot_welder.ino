/*
 * Attiny13, spot welder controller
 * 2020-DCE-21
 * # Copyright (c) 2020, xiaolaba <https://github.com/xiaolaba>
 */


#ifndef F_CPU
// 9.6 MHz, internal RC resonator
#define F_CPU 9600000UL
#endif
#define sw  PB0  // input, switch, welding control
#define out PB1  // output, control relay for welding

#include <avr/io.h>
#include <util/delay.h>


void io_setup(void)
{
  DDRB &= ~(1 << sw);  //set PB3 as input
  PORTB |= (1 << sw);  //activate pull-up resistor for PB3
  DDRB |= (1 << out);   //set PB4 as output
}



void adc_setup (void)
{
    // Set the ADC input to PB2/ADC1
    ADMUX |= (1 << MUX0);
    ADMUX |= (1 << ADLAR);

    // Set the prescaler to clock/128 & enable ADC
    ADCSRA |= (1 << ADPS1) | (1 << ADPS0) | (1 << ADEN);
}

uint8_t adc_read (void)
{
    // Start the conversion
    ADCSRA |= (1 << ADSC);
    // Wait for it to finish
    while (ADCSRA & (1 << ADSC));
    return ADCH;
}

void read_btn() {
  //read the button state
  uint8_t buttonState = PINB & (1 << sw);
  //if the button is HIGH, turn led on
  if (buttonState) {
   PORTB &= ~(1 << out); //write to PORTB register to set the LED state to LOW
   _delay_ms (1000);
   //off LED
   PORTB |= (1 << out); //write to PORTB register to set the LED state to HIGH
  }
  //else, turn off
  else {
   PORTB |= (1 << out); //write to PORTB register to set the LED state to HIGH
  }
}



int main (void)
{
    uint8_t adc_in=0;
    io_setup();
    adc_setup();
    while (1) {
        adc_in = adc_read();
        read_btn();     
    }
}

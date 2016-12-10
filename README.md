# TL2C
Timed LED Lighting Control

## Introduction
This project is a I2C device to control up to three High Power LED drivers using three PIR13 motion controllers.

The LED drivers in question are already provided on my site and are the SLV 464110 10W 3-36V \(EAN: 4024163087155) constant current High Power LED drivers - as are the motion detectors [PIR13](http://www.elv.de/bewegungsmeldermodul-pir-13.html) modules from [ELV](http://www.elv.de).

The device will be designed around the ATTINY20-SSU micro-controller. The requirements being SPI for In System Programming, I2C to connect to the master device and GPIO for the three High Power LED drivers and the three PIR13 sensors.

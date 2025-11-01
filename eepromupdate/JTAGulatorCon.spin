{{
+-------------------------------------------------+
| JTAGulator                                      |
| Global Constants                                |  
|                                                 |
| Author: Joe Grand                               |                     
| Copyright (c) 2013-2018 Grand Idea Studio, Inc. |
| Web: http://www.grandideastudio.com             |
|                                                 |
| Distributed under a Creative Commons            |
| Attribution 3.0 United States license           |
| http://creativecommons.org/licenses/by/3.0/us/  |
+-------------------------------------------------+

Program Description:

This object provides global constants used by the
JTAGulator. 
 
}}


CON
  ' JTAGulator I/O pin definitions
  PROP_SDA      = 29
  PROP_SCL      = 28  
  LED_R         = 27   ' Bi-color Red/Green LED, common cathode
  LED_G         = 26
  DAC_OUT       = 25   ' PWM output for DAC
  TXS_OE        = 24   ' Output Enable for TXS0108E level translators
  
  MAX_CHAN      = 24   ' Maximum number of pins/channels the JTAGulator hardware provides, must be in groups of 8


PUB PinDefsOnlySoIgnoreThis
  return 0
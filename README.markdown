JTAGulator-ID-Tracker
==========

A update for Jtagulator.This branch adds the function of getting the chip manufacturer name by using jtagulator's "D" instruction.
Jtagultor is an open source hardware hacking tool that assists in identifying on-chip debug (OCD) interfaces from test points, vias, component pads, or connectors of an electronic device.


Usage
-----

Main project page: [http://www.jtagulator.com](http://www.jtagulator.com)

Documentation: [https://github.com/grandideastudio/jtagulator/wiki](https://github.com/grandideastudio/jtagulator/wiki)

Videos: [YouTube playlist](https://www.youtube.com/playlist?list=PLsyTdiI7kVn8H848lMSKljkUwPnZfke9k)


Firmware
--------
To use Jtagulator-ID-Tracker:
1.Use Parallax Propeller Tool (1.3.2) flash the eeprom_update firmware into Jtagulator.
2.Observe the serial port until the database burning is complete.
3.flash the Jtagulator-ID-Tracker fireware.
4.After you find any ID,use "D" instruction to get the chip manufacturer name.
*Note: Once the EEPROM_UPDATE firmware has been fully executed, switching Jtagulator firmware will not affect the internal manufacturer database.*
*Note: This is a development repository. Interim commits may be unstable.*


Author
------
Created by Joe Grand of [Grand Idea Studio](http://www.grandideastudio.com). 
Modified by Weiao, 2025.10.31


License
-------
The JTAGulator design is distributed under a [Creative Commons Attribution 3.0 United States](http://creativecommons.org/licenses/by/3.0/us/) license. This means that you can share and adapt the work, but you must attribute the work to the original author. 

The JTAGulator name and logo are registered trademarks of [Grand Idea Studio]((http://www.grandideastudio.com)). The marks may not be used on derived works without permission. 

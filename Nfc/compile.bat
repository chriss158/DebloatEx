@echo off
set mod_name=screenonlockon
set rom_version=20g
java -jar ..\Tools\smali-2.1.2.jar -o %rom_version%\out_%mod_name%\classes.dex %rom_version%\out_%mod_name%
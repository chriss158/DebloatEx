@echo off
set framework_folder=D:\RootG4\Imperium_Rom_G4_v2.0_v20g\system\framework
set rom_version=20g
java -Xmx512M -jar ..\Tools\baksmali-2.1.2.jar -x -c boot.oat -d "%framework_folder%\arm64" %rom_version%\org_odex_file\LgNfc.odex -o %rom_version%\out_org
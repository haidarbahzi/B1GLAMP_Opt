@echo off
title B1GLAMP_PROJECT
color 0a

:start
cls
echo.
echo.
echo        ==============================================================================
echo        IIIIIIII   I   IIIIIIII  I          IIIIIIIII  IIIIIIIIIIIIIIIIII   IIIIIIIIII
echo        I      I   I   I         I          I       I  I       I        I   I        I
echo        I      I   I   I         I          I       I  I       I        I   I        I 
echo        IIIIIIIII  I   IIIIIIII  I          IIIIIIIII  I       I        I   IIIIIIIIII
echo        I       I  I   I      I  I          I       I  I       I        I   I
echo        I       I  I   I      I  I          I       I  I       I        I   I
echo        IIIIIIIII  I   IIIIIIII  IIIIIIIII  I       I  I       I        I   I    
echo        ==============================================================================
echo.
echo.
echo.
echo                                          Menu :
echo        ===========================================================================
echo            Windows Optimizer:          I   Windows Repair:     I   Activate Windows:
echo        1) Delete Temp Files            I 7) DISM CheckHealth   I a) Windows 10 Home            
echo        2) Disable Windows Defender     I 8) DISM ScanHealth    I b) Windows 10 Pro    
echo        3) Disable prefetch             I 9) DISM RestoreHealth I c) Windows 10 Enterprise
echo        4) Enable Ultimate Performance  I #) SFC Snannow        I d) Windows 10 Pro N
echo        5) Enable Godmode               I                       I e) Windows 10 Education
echo        6) Delete Bloatware             I 0) Exit               I
echo.
echo.
set choice=
set /p choice=  "Execute Option: "
if '%choice%'=='1' goto delete
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='2' goto WinDefend
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='3' goto Search
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='4' goto Power
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='5' goto Godmode
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='6' goto Bloatware
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='7' goto CheckHealth
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='8' goto ScanHealth
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='9' goto RestoreHealth
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='#' goto SFC#
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='a' goto Home
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='b' goto Pro
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='c' goto Enterprise
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='d' goto Pro N
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='e' goto Education
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='0' goto Exit
if not '%choice%'=='' set choice=%choice:~0,1%

:delete
cls
echo Deleting Temp Files...
del /q/f/s %TEMP%\*
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
set %time% = time
set %date% = date
echo -Temp files has been deleted successfuly at %date% %time% >> Log.txt
goto start
pause

:Godmode
cls
echo Enabling God Mode...
mkdir "$DesktopPath\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"
echo God Mode Enabled.
set %time% = time
set %date% = date
echo -God Mode has been enabled successfuly at %date% %time% >> Log.txt
goto start
pause

:WinDefend
cls
echo Disabling Windows Defender...
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRoutinelyTakingAction /t REG_DWORD /d 1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v ServiceKeepAlive /t REG_DWORD /d 0
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableIOAVProtection /t REG_DWORD /d 1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableOnAccessProtection /t REG_DWORD /d 1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRealtimeMonitoring /t REG_DWORD /d 1
set %time% = time
set %date% = date
echo -Windows Defender has been disabled successfuly at %date% %time% >> Log.txt
goto start
pause

:Search
cls
echo Disabling prefetch collection...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /v AllowPrelaunch /t REG_DWORD /d "0" /f
echo prefetch collection disabled
set %time% = time
set %date% = date
echo -prefetch collection has been disabled successfuly at %date% %time% >> Log.txt
goto start
pause

:Power
cls
echo enabling Ultimate Performance power plan...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
set %time% = time
set %date% = date
echo -Ultimate Performance power plan has been enabled successfuly at %date% %time% >> Log.txt
goto start
pause

:Bloatware
cls
echo Enabling Windows Power Shell...
reg add "HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\Shell\Open\Command" /v "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" "%1" /t REG_SZ /f
goto it
:it
cls
echo Deleting Windows Bloatware...
bloat.ps1
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:CheckHealth 
cls
DISM /Online /Cleanup-Image /CheckHealth
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:ScanHealth
cls
DISM /Online /Cleanup-Image /ScanHealth
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:RestoreHealth
cls
DISM /Online /Cleanup-Image /RestoreHealth
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:SFC#
cls
sfc /scannow
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:Home
cls
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
slmgr /skms kms8.msguides.com
slmgr /ato
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:Pro
cls
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.msguides.com
slmgr /ato
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:Enterprise
cls
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr /skms kms8.msguides.com
slmgr /ato
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:Pro N
cls
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
slmgr /skms kms8.msguides.com
slmgr /ato
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:Education
cls
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
slmgr /skms kms8.msguides.com
slmgr /ato
set %time% = time
set %date% = date
echo -The operation has done successfuly at %date% %time% >> Log.txt
goto start
pause

:Exit
exit
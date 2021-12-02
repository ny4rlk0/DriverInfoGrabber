Title NYA Driver Modeli Bulma Yazilimi
color a
@echo off
cls
if _%1_==_payload_  goto :payload

:getadmin
    echo %~nx0: Getting Administrator permissions from operating system.
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto :eof

:payload

::TheMagic::
Mode con cols=130 lines=3
cls & color 0A & echo.
Set "dosya=DeviceManager.txt"
echo       Dosya olusturulurken lutfen biraz bekleyin %dosya% ..... (File is creating... Please wait...)
start /wait msinfo32 /report %dosya%
start "" notepad %dosya%
::TheMagic::

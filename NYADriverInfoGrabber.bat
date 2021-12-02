@echo off
Title NYA Driver Modeli Bulma Yazilimi
Mode con cols=80 lines=3
cls & color 0A & echo.
Set "dosya=DeviceManager.txt"
echo       Dosya olusturulurken lutfen biraz bekleyin %dosya% ..... (File is creating... Please wait...)
start /wait msinfo32 /report %dosya%
start "" notepad %dosya%

@echo off
setlocal enabledelayedexpansion
HardBitDecryptor.exe -getid
for /f "usebackq delims=" %%G in (`HardBitDecryptor.exe -getid`) do set id=%%G
HardBitDecryptor.exe -id !id! -d %~dp0
pause

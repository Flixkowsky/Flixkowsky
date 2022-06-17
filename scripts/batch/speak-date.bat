@echo off &

REM see <C:\Windows\SysWOW64\Speech\SpeechUX\sapi.cpl>

color A &
chcp 1252>NUL &
for /f %%b in ('date/t') do set dat=%%b &
set ue=� &
set oe=� &
set ae=� &
set oegross=� &
chcp 850>NUL &
title Datum &
:Main &
echo dim fname > Speak.vbs &
echo set Speak=createobject("sapi.spvoice") >> Speak.vbs &
echo Speak.speak(" %dat% ") >> Speak.vbs &
ping -n .40 localhost>NUL &
start Speak.vbs &
ping -n 2 localhost>NUL &
del Speak.vbs 

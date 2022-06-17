@echo off

REM see <C:\Windows\SysWOW64\Speech\SpeechUX\sapi.cpl>

color A
chcp 1252>NUL
for /f %%b in ('time/t') do set tim=%%b
set ue=� 
set oe=�
set ae=�
set oegross=�
chcp 850>NUL
title Uhrzeit
:Main
cls
echo dim fname > Speak.vbs
echo set Speak=createobject("sapi.spvoice") >> Speak.vbs
echo Speak.speak(" %tim% ") >> Speak.vbs
call Speak.vbs
del Speak.vbs
exit

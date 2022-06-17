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
:Main
cls
echo dim fname > Speak.vbs
echo set Speak=createobject("sapi.spvoice") >> Speak.vbs
echo Speak.speak("speak msg") >> Speak.vbs
ping -n .40 localhost>NUL
start Speak.vbs
ping -n 2 localhost>NUL
del Speak.vbs
exit

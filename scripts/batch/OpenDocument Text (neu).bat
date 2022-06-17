:n
@echo off
title Neues Textdokument(3)
color f0
prompt $e
cls

:a
set com= 
set /p com= 
cls
if "%com%" == "e" (
   @echo off
   exit
)

if "%com%" == "q" (
   @echo off
   cls
   goto a
)

if "%com%" == "n" (
   @echo off
   cls
   goto n
)

if "%com%" == "?" (
   echo e         [exit]
   echo q         [cls]
   echo n         [default]
   echo w         [text]
   echo kill      [expl kill]
   echo killall   [expl kill exit]
   echo net set   [net.settings]

   @echo off
   goto a
)

if "%com%" == "w" (
   echo Die Erde
   echo Die Erde ist ein grosser, von Lebewesen
   echo bewohnter Planet. Die entwickelste Lebensform
   echo ist der Mensch. Jedoch zaehlt dieser nicht zu
   echo den intelligentesten Lebewesen dieses Planetens.

   @echo off
   goto a
)

if "%com%" == "kill" (
   taskkill/IM explorer.exe /F
   cls
   @echo off
   goto a
)
if "%com%" == "killall" (
   taskkill /IM explorer.exe /F
   cls
   @echo off
   exit
)


if "%com%" == "net set" (
   net view
   shutdown -i
   @echo off
   goto a
)

@echo on
%com%
@echo off
goto a
pause >nul

@echo off

if exist ips.txt del ips.txt > nul

echo IP > ips.txt
echo List >> ips.txt

echo Please enter first part of the ip
set /p ip=

for /L %%N IN (1, 1, 255) DO (
   echo ping %ip%%%N
   ping %ip%%%N -n 1 -w 1 | find "TTL" && echo %ip%%%N >> ips.txt
   type ips.txt
)

cls
type ips.txt
pause >nul

@echo off	
title trash_dir
if EXIST "trash_dir" goto A
if NOT EXIST "trash_dir" goto B
:A
rd trash_dir /s /q
goto END
:B
md trash_dir
goto END
:END
exit


set "file=login-log.txt"

echo Login >> %file%
echo User=%username% >> %file%
echo Device=%computername% >> %file%
echo Date=%date% >> %file%
echo Time=%time% >> %file%

echo - - - - - - - - - - - - - - - >> %file%

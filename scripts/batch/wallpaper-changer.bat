reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "PATH_TO_IMAGE" /f &
start "" /b RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True &
start "" /b RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True &
start "" /b RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True &
start "" /b RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True &
start "" /b RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True

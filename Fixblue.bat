@if DEFINED SESSIONNAME (
    @color c
    @echo.
    @echo  [-] You must right click to "Run as administrator"
    @echo  [!] Try again
    @echo.
    @pause
    @goto :EOF
)

color b
echo off
cls
echo ----BSOD FIXER----
echo [$] Please press enter any key for fix issue
pause
echo
timeout 3
cls
echo -----------------------------------
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f
color a
echo -----------------------------------
echo [+] If you see the text of successful process 2 times, you can close it.
echo -----------------------------------
echo [!!!] After this process, you should restart the computer only once.
pause
@echo off
set "sourceFolder=%localappdata%\DigitalEntitlements"
set "destinationFolder=%userprofile%\Desktop"

echo Moving DigitalEntitlements folder from %sourceFolder% to %destinationFolder%...

if not exist "%sourceFolder%" (
    echo Source folder does not exist.
    pause
    exit /b
)

move "%sourceFolder%" "%destinationFolder%"

echo Move completed.
taskkill /f /im steam.exe
for /f "tokens=2 delims= " %%I in ('tasklist ^| findstr /i "steam.exe"') do (
    taskkill /f /pid %%I
echo Kill Steam completed.
pause

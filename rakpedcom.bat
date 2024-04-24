@echo off
set "sourceFolder=%userprofile%\Desktop\DigitalEntitlements"
set "destinationFolder=%localappdata%"

echo Moving DigitalEntitlements folder from %sourceFolder% to %destinationFolder%...

if not exist "%sourceFolder%" (
    echo Source folder does not exist.
    pause
    exit /b
)

move "%sourceFolder%" "%destinationFolder%"

echo Move completed.
pause

:: Lock Workstation PC [Windows batch file].
:: Date: 15 FEB 2026, Source => gpg.ai
@echo off
:: Clear clipboard
echo off | clip

:: Kill browsers
for %%B in (
  chrome.exe
  msedge.exe
  brave.exe
  firefox.exe
  opera.exe
) do (
  taskkill /f /im %%B >nul 2>&1
)

:: Flush DNS cache
ipconfig /flushdns >nul 2>&1

:: Disable network
netsh interface set interface "Wi-Fi" admin=disable >nul 2>&1
netsh interface set interface "Ethernet" admin=disable >nul 2>&1

:: LOCK
rundll32.exe user32.dll,LockWorkStation


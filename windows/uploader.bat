@echo off
title Immich Uploader

set /p server_url=Enter the URL of the Immich server (including http:// or https://): 
set /p api_key=Enter an API key: 

echo Downloading the immich-go utility...
powershell -Command $ProgressPreference = 'SilentlyContinue' ; Invoke-WebRequest "https://github.com/mrLeonTheMaster/google-photos-immich/raw/refs/heads/main/windows/immich-go.exe" -OutFile immich-go.exe

cls
.\immich-go -server=%server_url% -key=%api_key% upload -create-albums -google-photos takeout-*.zip

echo Press any key to exit . . .
pause>nul

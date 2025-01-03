@echo off

title Immich Uploader
set "text=Immich Uploader" & set /a width=80, len=0, pad=(width-(for /l %%A in (0,1,1024) do if not "!text:~%%A,1!"=="" set /a len+=1)) / 2 & set "line=" & for /l %%A in (1,1,%pad%) do set "line=!line!-!" & set "line=!line!!text!" & for /l %%A in (1,1,%pad%) do set "line=!line!-!" & echo !line:~0,%width%!

set /p server_url=Enter the URL of the Immich server (including http:// or https://): 
set /p api_key=Enter an API key: 

echo Downloading the immich-go utility...
powershell -Command $ProgressPreference = 'SilentlyContinue' ; Invoke-WebRequest "https://github.com/mrLeonTheMaster/google-photos-immich/raw/refs/heads/main/windows/immich-go.exe" -OutFile immich-go.exe

.\immich-go -server=%server_url% -key=%api_key% upload -create-albums -google-photos takeout-*.zip

pause

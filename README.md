# Google Photos Immich Uploader
A script to upload all photos from your Google account to Immich.

This script uses [immich-go](https://github.com/simulot/immich-go)
## Preparation
> [!NOTE]
> At some step in this stage, you will need to verify your Google account password.
1. Go to [Google Takeout](https://takeout.google.com/)
2. Click the "Deselect all" button
3. Select Google Photos (on the bottom of the page)
4. Click next
5. Select "Export once"
6. As the file type select .zip and as the size select the biggest available
7. Click "Create Export"
The export can take a couple of hours or even days. You will get an email from google when it is done.

When the export is ready, download all .zip files and put them in one folder.
> [!IMPORTANT]
> The files must be named "takeout-_\<some characters\>_.zip"!

> [!IMPORTANT]
> Do **not** unpack the .zip files!
## How to run
### Windows
1. Open the folder with the .zip files from Google Takeout using file explorer
2. Click the top (address) bar, paste the following command and press enter: ``powershell -Command "& {iwr -Uri 'https://github.com/mrLeonTheMaster/google-photos-immich/raw/refs/heads/main/windows/uploader.bat' -OutFile 'uploader.bat'; Start-Process 'uploader.bat'}"``
3. Follow the instructions on screen
### Linux
1. Open the terminal in the folder with the .zip files from Google Takeout
2. Run the following command: ``bash <(curl -sL "https://github.com/mrLeonTheMaster/google-photos-immich/raw/refs/heads/main/linux/uploader.sh")``
3. Follow the instructions on screen

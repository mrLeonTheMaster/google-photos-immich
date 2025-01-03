# Google Photos Immich Uploader
## Preparation
1. Go to [Google Takeout](https://takeout.google.com/)
## How to run
### Windows
1. Open the folder with the .zip files from Google Takeout using file explorer.
2. Click the top (address) bar, paste the following command and press enter: ``powershell -Command "& {iwr -Uri 'https://github.com/mrLeonTheMaster/google-photos-immich/raw/refs/heads/main/windows/uploader.bat' -OutFile 'uploader.bat'; Start-Process 'uploader.bat'}"``
3. Follow the instructions on screen.
### Linux
1. Open the terminal in the folder with the .zip files from Google Takeout.
2. Run the following command: ``bash <(curl -sL "https://github.com/mrLeonTheMaster/google-photos-immich/raw/refs/heads/main/linux/uploader.sh")``
3. Follow the instructions on screen.

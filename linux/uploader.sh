#!/bin/bash

read -p "Enter the URL of the Immich server (including http:// or https://): " server_url
read -p "Enter an API key: " api_key

echo "Downloading the immich-go utility..."
wget -q --show-progress "https://github.com/mrLeonTheMaster/google-photos-immich/raw/refs/heads/main/linux/immich-go"
chmod a+x ./immich-go

./immich-go -server=$server_url -key=$api_key upload -create-albums -google-photos takeout-*.zip

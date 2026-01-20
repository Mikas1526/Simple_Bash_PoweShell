#!/bin/sh
# variables
discordSource="https://discord.com/api/download?platform=linux&format=tar.gz"
archiveName="discord.tar.gz"
discordLocation="/usr/local/bin/"

# Download and extract
curl -L -o $archiveName  $discordSource
tar -xvf $archiveName

# Clean up
rm $archiveName
sudo rm -rf "${discordLocation}Discord"

# Update
sudo mv Discord/ $discordLocation

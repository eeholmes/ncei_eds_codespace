#!/bin/bash

# Construct the message
message="# Welcome to your RStudio Codespace!
- This readme should open up at same time as the VS code container. 
- If there are any persistent data changes, you might want to back up the data
- Your application is available at this URL:

## RStudio URL: https://$CODESPACE_NAME-8787.app.github.dev
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/rstudio/workspace/README.md
# Detect the Linux distribution
DISTRO=$(cat /etc/*-release | grep ^ID | tr -d '"' | cut -d= -f2)

# Install dependencies based on the detected distribution
if [ "$DISTRO" == "gentoo" ]; then
    sudo emerge --ask sci-libs/geos
elif [ "$DISTRO" == "centos" ]; then
    sudo yum install geos geos-devel
elif [ "$DISTRO" == "debian" ] || [ "$DISTRO" == "ubuntu" ]; then
    sudo apt update
    sudo apt install libgeos-dev
else
    echo "Unsupported distribution"
fi


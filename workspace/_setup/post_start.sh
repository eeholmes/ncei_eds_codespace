#!/bin/bash

# Construct the message
message="# Welcome to your RStudio Codespace!
- This readme should open up at same time as the VS code container. 
- If there are any persistent data changes, you might want to back up the data

# Access RStudio
Your application is available at this URL:

## RStudio URL: https://$CODESPACE_NAME-8787.app.github.dev
"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/rstudio/workspace/README.md

#sudo apt update
#sudo apt install libgeos-dev


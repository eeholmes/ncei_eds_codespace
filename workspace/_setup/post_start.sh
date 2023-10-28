#!/bin/bash

# Update readme
message="# Welcome to your ESD RStudio Codespace!
- This readme should open up at same time as the VS code container. 
- If there are any persistent data changes, you might want to backup/export the data 
- Various project files and scripts will need thier paths updated. 
- Review slides for more info

# Access RStudio
## [Click to Open RStudio](https://$CODESPACE_NAME-8787.app.github.dev)

## View Slides:
## [CW_Verstaen_EDS_Overview](https://$CODESPACE_NAME-8787.app.github.dev/files/workspace/slides/CW_Verstaen_EDS.pdf)
## [ESD_workshop](https://$CODESPACE_NAME-8787.app.github.dev/files/workspace/slides/ESD_workshop_02.pdf)

"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/rstudio/workspace/README.md

#sudo apt update
#sudo apt install libgeos-dev


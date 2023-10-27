#!/bin/bash

# Construct the message
message="# Welcome to your RStudio Codespace!
- This readme should open up at same time as the VS code container. 
- If there are any persistent data changes, you might want to back up the data
- Various project files and scripts need thier paths updated. 
- Review slides for more info on howto use

# Access RStudio
Your application is available at this URL:

## RStudio URL: https://$CODESPACE_NAME-8787.app.github.dev


<object data="/home/rstudio/workspace/slides/CW_Verstaen_EDS.pdf" type="application/pdf" width="700px" height="700px">
    <embed src="/home/rstudio/workspace/slides/CW_Verstaen_EDS.pdf">
    </embed>
</object>

"
# Echo the message to the terminal
echo "$message"

# Append the message to README.md
echo "$message" >> /home/rstudio/workspace/README.md

#sudo apt update
#sudo apt install libgeos-dev


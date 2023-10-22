#!/bin/sh

# look for a file name foundryvtt-.....zip or FoundryVTT...zip, copy it to 
# /opt/foundryvtt, unzip and remove it. Then start the foundry app

cd /opt/foundryvtt
echo "Unzipping..."
unzip -o *.zip && rm *.zip

node resources/app/main.js --dataPath=/data/foundryvtt

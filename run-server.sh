#!/bin/sh

# look for a file name foundryvtt-.....zip or FoundryVTT...zip, copy it to 
# /opt/foundryvtt, unzip and remove it. Then start the foundry app

cd /opt/foundryvtt
find /host -type f -name [f,F]oundry[vtt,VTT]*.zip -exec cp '{}' . ';'
sudo unzip -o *.zip && rm *.zip
sudo chown -R fvtt:fvtt /opt/foundryvtt
node resources/app/main.js --dataPath=/data/foundryvtt

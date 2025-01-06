#!/bin/bash

BLUE='\033[0;34m'
RESTORE='\033[0m'

echo -e "$BLUE>>$RESTORE Entering /usr/local/bin"
pushd /usr/local/bin
echo -e "$BLUE>>$RESTORE Downloading IkerFetch..."
sudo curl -s https://raw.githubusercontent.com/IkerOwO/IkerFetch/main/ikerfetch -o ikerfetch
echo -e "$BLUE>>$RESTORE Giving exec rights to ikerfetch..."
sudo chmod +x ikerfetch
echo -e "$BLUE>>$RESTORE Ikerfetch is installed!"
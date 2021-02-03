#!/bin/bash

cd /rendu/Piscine-J1

git add .


DATE=$(date)

git commit -m "version du $DATE" 

git pull

osascript -e "display notification 'pushed to remote' with title 'SUCCESS'"



rsync -r . /var/www/html --exclude .git

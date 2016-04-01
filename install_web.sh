#!/bin/bash
sudo apt-get update 2>&1 | dialog --title "Updating package database..." --infobox "\nPlease wait...\n" 11 70
sudo apt-get --show-progress -y install dialog arora fbi libexif12  2>&1 | grep --line-buffered -oP "(\d+(\.\d+)?(?=%))" | dialog --title "Installing FBI imageviewer and Arora" --gauge "\nPlease wait...\n" 11 70
wget -O install_vnc.zip https://github.com/zjoasan/directvnc_install/blob/master/install_web.zip?raw=true
unzip -q -o install_web.zip 
chmod +x /home/osmc/web-browser/webbis.sh 2>&1
chmod +x /home/osmc/web-browser/webstart2.sh 2>&1
chmod +x /home/osmc/web-browser/web_watchdog.sh 2>&1
cp /home/osmc/.kodi/addons/plugin.program.www-launcher/fanart.jpg /home/osmc/web-browser/fanart.jpg
rm -f install_web.zip 2>&1
dialog --title "Installation finnished!" --msgbox "\nThank you for using my installer\n"  11 70
exit




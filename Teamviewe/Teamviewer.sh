#!/bin/bash
echo "Teamviewer install "
sudo dpkg -l |grep teamviewer
if [ $? -eq -0 ];
then
echo "teamviewer is ready"
else
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
sudo apt-get -f install -y
sudo rm teamviewer_amd64.deb
fi


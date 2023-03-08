#Ubuntu Standard Software
#!/bin/bash

echo "\n\033[33m#################### update resource ####################\033[0m \n "

sudo apt-get update

echo "\033[33m##############################################\033[0m"
echo "\033[33m#           \033[39mStart Install Software           \033[33m#\033[0m"
echo "\033[33m##############################################\033[0m \n"

sleep 0.3

#install net-tools
dpkg -l |grep net-tools >> /dev/null
if [$? -eq 0 ]
then
echo "net-tools Is already installed \n"
else 
sudo apt-get -y install net-tools
fi 

sleep 0.3

#install Teamviewer
dpkg -l |grep Teamviewer >> /dev/null
then
echo "Teamviewer Is already installed \n"
else 
sudo dpkg -i teamviewer_15.13.6_amd64.deb
sudo apt-get -f install -y
fi

sleep 0.3

#install putty
dpkg -l |grep putty >> /dev/null
if [$? -eq 0 ]
then
echo "Putty Is already installed \n"
else
sudo apt-get install putty
fi  

sleep 0.3

# install Altiris
if [ -f /opt/altiris/notification/ctagent/bin/aex-cta.bin ];then
echo "Altiris is already installed \n"
else
wget https://altiris.nioext.com/Altiris/NS/NSCap/Bin/Unix/AgentInstall/Linux/x64/aex-bootstrap-linux --no-check-certificate 
sudo chmod u+x aex-bootstrap-linux
sudo ./aex-bootstrap-linux 
sudo rm -rf aex*
fi


#install Cisco Anyconnect
if [ -d /opt/cisco/anyconnect/bin/ ];then
echo "cisco is already installed \n"
else
sudo tar -zxvf anyconnect-linux64-4.8.03052-predeploy-k9.tar.gz
cd anyconnect-linux64-4.8.03052/vpn/
sudo sh vpn_install.sh
sudo rm -rf anyconnect*
fi 

if [ -f /opt/cisco/anyconnect/profile/vpn.nevext.com.xml ];then
echo "cisco profile is already installed \n"
else
sudo cp -i vpn.nevext.com.xml /opt/cisco/anyconnect/profile
sudo apt-get -f install -y 
sudo rm -rf vpn.nevext.com.cml
fi

sleep 0.3

# set System time

dpkg -l | grep ntpdate >> /dev/null
if [ $? -eq 0 ]
then
echo "ntpdate is already installed \n"
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc
else
sudo apt-get -y install ntpdate
sudo ntpdate time.windows.com
sudo hwclock --localtime --systohc
fi

# set gedit Language
gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['GB18030', 'UTF-8', 'CURRENT', 'ISO-8859-15', 'UTF-16']" 

echo "\n\033[33m#################### Finish ####################\033[0m \n "

echo "start change hostname \n"
sudo chmod 777 /etc/hostname
sudo dmidecode -t 1 | grep Serial | cut -c 17-27 > /etc/hostname
sudo sed -i 's/5CG/LT5CG/' /etc/hostname
sudo sed -i 's/4CV/WS4CV/' /etc/hostname
sudo sed -i 's/6CR/WS6CR/' /etc/hostname
sudo sed -i 's/CND/MSCND/' /etc/hostname
echo "hostname \n"
cat /etc/hostname


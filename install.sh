clear
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Installation started."
echo " "
echo " "
echo " "
echo " "
echo " "
sleep 5
cd ~/
sudo apt update && sudo apt -y upgrade
sudo apt-get install fail2ban
sleep 5
fallocate -l 3G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
sudo echo -e "/swapfile none swap sw 0 0 \n" >> /etc/fstab
sleep 5
cd ~/
wget https://github.com/TheLindaProjectInc/Linda/releases/download/3.3.1/Lindad-linux-x64.tar.gz
tar -xzvf Lindad-linux-x64.tar.gz -C /usr/local/bin/
rm /usr/local/bin/Linda-cli
Lindad
echo " "
echo "Wallet started, wait 30 seconds."
echo " "
sleep 30
Lindad stop
echo " "
echo "Wallet stopped, wait 5 seconds."
echo " "
sleep 5
echo " "
echo " "
echo " "
echo " "
echo " "
echo "In your cold (PC) wallet perform: masternode genkey"
echo " "
echo -n "Enter your masternode genkey here and press Enter: "
read masternodegenkey
echo "rpcuser=$(date +%s | sha256sum | base64 | head -c 7)
rpcpassword=$(date +%s | sha256sum | base64 | head -c 19)
rpcport=33821
rpcallowip=127.0.0.1
daemon=1
server=1
listenonion=0
maxconnections=64
masternode=1
masternodeprivkey=$masternodegenkey" > ~/.Linda/Linda.conf
Lindad
echo " "
echo "Wallet started, wait 30 seconds."
echo " "
sleep 30
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Check below if you have connections"
echo "and more than 0 blocks."
echo " "
echo " "
echo " "
echo " "
echo " "
Lindad getinfo
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Give your wallet few hours to sync."
echo " "
echo "Once synced go to your cold (PC) wallet"
echo "and perform: masternode start-alias <name>"
echo " "
echo " "
echo " "
echo " "
cd ~/
rm -rf Lindacoin
rm -rf Lindad-linux-x64.tar.gz

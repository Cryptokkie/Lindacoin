clear
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: Installation started."
echo "NerdyUser: This will take some time."
echo " "
echo " "
echo " "
echo " "
echo " "
sleep 5
cd ~/
sudo apt update && sudo apt -y upgrade
sleep 5
fallocate -l 3G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
sudo echo -e "/swapfile none swap sw 0 0 \n" >> /etc/fstab
sleep 5
sudo apt-get install -y pkg-config
sleep 5
sudo apt-get -y install build-essential autoconf automake libtool libboost-all-dev libgmp-dev libssl-dev libcurl4-openssl-dev git
sleep 5
yes '' | sudo add-apt-repository ppa:bitcoin/bitcoin
sleep 5
sudo apt-get -y install libdb4.8-dev libdb4.8++-dev
sleep 5
sudo apt-get install fail2ban
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: VPS will reboot automatically now!"
echo "NerdyUser: Reconnect in 2 minutes."
echo " "
echo " "
echo " "
echo " "
echo " "
sleep 10
reboot
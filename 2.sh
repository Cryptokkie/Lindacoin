cd ~/
wget https://github.com/Lindacoin/Linda/releases/download/2.0.0.1/Unix.Lindad.v2.0.0.1g.tar.gz
tar -xzvf Unix.Lindad.v2.0.0.1g.tar.gz -C /usr/local/bin/
Lindad -daemon
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: Masternode started for 30 seconds, will be automatic stopped & script will continue!"
echo " "
echo " "
echo " "
echo " "
echo " "
sleep 30
Lindad stop
cd ~/
clear
echo -n "Enter your genkey & press Enter: "
read masternodegenkey
echo "rpcuser=asupersecureusername
rpcpassword=anevenmoresecurepassword
rpcallowip=127.0.0.1
server=1
listen=1
daemon=1
logtimestamps=1
maxconnections=64
addnode=seed1.linda-wallet.com
addnode=seed2.linda-wallet.com
addnode=seed3.linda-wallet.com
addnode=seed4.linda-wallet.com
addnode=seed5.linda-wallet.com
addnode=seed6.linda-wallet.com
addnode=seed7.linda-wallet.com
addnode=seed8.linda-wallet.com
addnode=seed9.linda-wallet.com
addnode=seed10.linda-wallet.com
addnode=seed11.linda-wallet.com
masternode=1
masternodeprivkey=$masternodegenkey" > ~/.Linda/Linda.conf
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: Config saved"
echo " "
echo " "
echo " "
echo " "
echo " "
cd ~/
rm -rf Lindacoin
rm -rf Unix.Lindad.v2.0.0.1g.tar.gz
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: Installation completed!"
echo "NerdyUser: You can now bootstrap your VPS by FileZilla!"
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
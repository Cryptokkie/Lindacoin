cd ~/
clear
echo " "
echo " "
echo " "
echo " "
echo " "
echo "Upgrade started."
echo "Cancel this action if you didn't had v3.2.0.0 running!"
echo " "
echo " "
echo " "
echo " "
echo " "
Lindad stop
echo " "
echo "Current wallet stopped, wait 10 seconds."
echo " "
sleep 10
wget https://github.com/TheLindaProjectInc/Linda/releases/download/3.2.1.0/Lindad-linux-x64.tar.gz
tar -xzvf Lindad-linux-x64.tar.gz -C /usr/local/bin/
rm /usr/local/bin/Linda-cli
sleep 5
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
Lindad getinfo
echo " "
echo " "
echo " "
echo " "
echo "Masternode Status:"
Lindad masternode start
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

clear
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: Upgrade Linda V3.0.0.0 to V3.1.0.0 started."
echo " "
echo " "
echo " "
echo " "
echo " "
sleep 5
Lindad stop
sleep 15
cd ~/ 
wget https://github.com/TheLindaProjectInc/Linda/releases/download/v3.1.0.0/Unix.Lindad-v3.1.0.0g.tar.gz
tar -xzvf Unix.Lindad-v3.1.0.0g.tar.gz -C /usr/local/bin/
sleep 2
rm -rf Lindacoin
rm -rf Unix.Lindad-v3.1.0.0g.tar.gz
Lindad
echo " "
echo "NerdyUser: Starting your wallet for a minute."
echo " "
sleep 60
Lindad stop
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: Your VPS will reboot now."
echo " "
echo " "
echo "NerdyUser: Reconnect to your VPS in 2 minutes."
echo " "
echo " "
echo "NerdyUser: Perform after reconnecting: Lindad"
echo " "
echo " "
echo "NerdyUser: Perform 2 minutes later: Lindad masternode start"
echo " "
echo " "
sleep 10
reboot
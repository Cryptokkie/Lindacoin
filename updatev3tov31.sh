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
echo "NerdyUser: Starting your wallet and checking masternode status."
echo " "
sleep 60
echo " "
echo " "
echo " "
echo " "
echo " "
echo " "
Lindad masternode start
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: If you see 'masternode started remotely' is the upgrade done!"
echo " "
echo "NerdyUser: If not, wait a minute more and try 'Lindad masternode start'"
echo " "
echo " "
echo " "
echo " "
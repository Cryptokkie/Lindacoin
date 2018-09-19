clear
echo " "
echo " "
echo " "
echo " "
echo " "
echo "NerdyUser: Update Linda V3.1.0.0 to V3.1.0.1 started."
echo " "
echo " "
echo " "
echo " "
echo " "
sleep 5
Lindad stop
sleep 15
cd ~/ 
wget https://github.com/TheLindaProjectInc/Linda/releases/download/3.1.0.1/Unix.Lindad-v3.1.0.1g.tar.gz
tar -xzvf Unix.Lindad-v3.1.0.1g.tar.gz -C /usr/local/bin/
sleep 2
rm -rf Lindacoin
rm -rf Unix.Lindad-v3.1.0.1g.tar.gz
Lindad
echo " "
echo " "
echo " "
echo "NerdyUser: Starting your wallet and checking masternode status."
echo " "
echo " "
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
echo "NerdyUser: If you see 'masternode started remotely' above than is the update done!"
echo " "
echo "NerdyUser: If not, wait a minute more and try 'Lindad masternode start'"
echo " "
echo " "
#/bin/bash

echo "Your TradePluscoin Masternode Will be Updated To Latest Version Now" 
sudo apt-get -y install unzip
tradeplus_coin-cli stop
rm -rf /usr/local/bin/tradeplus_coin*
mkdir TDPSUpdated_2.0.0.0
cd TDPSUpdated_2.0.0.0
wget https://github.com/tdpsdevextreme/TradePlusCoin/releases/download/v2.0/TradePlus-2.0-daemon-ubuntu_18.04.tar.gz
tar -xzvf TradePlus-2.0-daemon-ubuntu_18.04.tar.gz
mv tradeplus_coind /usr/local/bin/tradeplus_coind
mv tradeplus_coin-cli /usr/local/bin/tradeplus_coin-cli
chmod +x /usr/local/bin/tradeplus_coin*
rm -rf ~/.tradeplus_coin/blocks
rm -rf ~/.tradeplus_coin/chainstate
rm -rf ~/.tradeplus_coin/sporks
rm -rf ~/.tradeplus_coin/zerocoin
rm -rf ~/.tradeplus_coin/peers.dat
cd ~/.tradeplus_coin/
wget http://138.68.245.239/bootstrap.tar.gz
tar -xzvf bootstrap.tar.gz
echo "addnode=159.203.7.41 add" >> tradeplus_coin.conf
echo "addnode=165.227.3.30 add" >> tradeplus_coin.conf
echo "addnode=165.227.3.124 add" >> tradeplus_coin.conf
echo "addnode=165.227.3.128 add" >> tradeplus_coin.conf
echo "addnode=138.197.217.69 add" >> tradeplus_coin.conf
echo "addnode=167.71.159.74 add" >> tradeplus_coin.conf
echo "addnode=138.68.245.239 add" >> tradeplus_coin.conf
echo "addnode=165.227.2.45 add" >> tradeplus_coin.conf
cd ..
cd TDPSUpdated_2.0.0.0
tradeplus_coind -daemon
sleep 10
tradeplus_coin-cli addnode 159.203.7.41 onetry
tradeplus_coin-cli addnode 165.227.3.30 onetry
tradeplus_coin-cli addnode 165.227.3.124 onetry
tradeplus_coin-cli addnode 165.227.3.128 onetry
tradeplus_coin-cli addnode 138.197.217.69 onetry
tradeplus_coin-cli addnode 167.71.159.74 onetry
tradeplus_coin-cli addnode 138.68.245.239 onetry
tradeplus_coin-cli addnode 165.227.2.45 onetry
echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"
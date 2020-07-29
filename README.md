# Guide for TradePlus MasterNodeSetup:


For **Ubuntu 16.04**
```
wget -q https://raw.githubusercontent.com/tdpsdevextreme/MasterNodeSetup/master/tdps_ubuntu_16.04-mn.sh
sudo chmod +x tdps_ubuntu_16.04-mn.sh
./tdps_ubuntu_16.04-mn.sh
```
***

For **Ubuntu 18.04**
```
wget -q https://raw.githubusercontent.com/tdpsdevextreme/MasterNodeSetup/master/tdps_ubuntu_18.04-mn.sh
sudo chmod +x tdps_ubuntu_18.04-mn.sh
./tdps_ubuntu_18.04-mn.sh
```
***

Do you want me to generate a masternode private key for you?[y/n]

- If you don't want to generate a masternode private key press **n**.

  > Next ask for Private key:
  
  > Enter your private key: Paste Your Masternode Private Key
  
  > Confirm your private key: Again Paste Your Masternode Private Key for confirmation

**OR**

- If you want to generate a masternode private key press  **y**.

 Enter VPS Public IP Address: Paste your VPS Address

 Wait till Node is fully Synced with blockchain.

`tradeplus_coin-cli getinfo`

When Node is Fully Synced enter the command below to check the masternode status.

`tradeplus_coin-cli getmasternodestatus`

You will get Masternode Successfully Started

# Guide for tdps-mn-updater.sh:

For **Ubuntu 16.04**
```
wget -q https://raw.githubusercontent.com/tdpsdevextreme/MasterNodeSetup/master/tdps-mn_updater-16.04.sh
sudo chmod +x tdps-mn_updater-16.04.sh
./tdps-mn_updater-16.04.sh
```
***

For **Ubuntu 18.04**
```
wget -q https://raw.githubusercontent.com/tdpsdevextreme/MasterNodeSetup/master/tdps-mn_updater-18.04.sh
sudo chmod +x tdps-mn_updater-18.04.sh
./tdps-mn_updater-18.04.sh
```
***
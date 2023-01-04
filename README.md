#This shell script displays the current usage of RAM in Kali Linux, as well as the current price of Bitcoin and Tesla shares.

#Usage
To use the script, save it to a file (e.g. "ram_btc_tesla.sh") and make it executable with the following command:

chmod +x ram_btc_tesla.sh

Then, you can run the script with the following command:

./ram_btc_tesla.sh


You can also display the usage statement by running the script with the -h or --help option:



![image](https://user-images.githubusercontent.com/121487559/210557203-ecc21444-8cc3-48c3-b5f6-d4f1b75344d2.png)

Example Output
Here is an example of the output produced by the script:

![image](https://user-images.githubusercontent.com/121487559/210557287-8735e174-73f2-45a2-8e9b-f6362656fae2.png)



Dependencies
This script requires the following tools to be installed on your system:

jq: a command-line JSON processor (https://stedolan.github.io/jq/)
curl: a command-line tool for transferring data over a network (https://curl.haxx.se/)
Credits
Bitcoin price data provided by the CoinDesk Bitcoin Price Index (https://www.coindesk.com/price/bitcoin)
Tesla stock price data provided by IEX Cloud (https://iexcloud.io/)




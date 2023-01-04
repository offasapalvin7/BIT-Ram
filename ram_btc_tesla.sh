#!/bin/bash

# Display usage statement if no arguments are provided
if [ $# -eq 0 ]
then
    echo "Usage: ram_btc_tesla.sh [OPTION]"
    echo "Displays current RAM usage, Bitcoin price, and Tesla stock price."
    echo ""
    echo "Options:"
    echo "  -h, --help       display this help and exit"
    exit 0
fi

# Parse command-line arguments
while [[ $# -gt 0 ]]
do
    key="$1"

    case $key in
        -h|--help)
            echo "Usage: ram_btc_tesla.sh [OPTION]"
            echo "Displays current RAM usage, Bitcoin price, and Tesla stock price."
            echo ""
            echo "Options:"
            echo "  -h, --help       display this help and exit"
            exit 0
            ;;
        *)
            echo "Invalid option: $key"
            exit 1
            ;;
    esac
    shift
done

# Display current RAM usage
echo "Current RAM usage: "
free -h

# Display current Bitcoin price
echo "Current Bitcoin price: "
curl -s https://api.coindesk.com/v1/bpi/currentprice/BTC.json | jq -r '.bpi.USD.rate'

# Display current Tesla stock price
echo "Current Tesla stock price: "
curl -s https://api.iextrading.com/1.0/stock/TSLA/quote | jq -r '.latestPrice'

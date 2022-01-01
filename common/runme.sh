#!/bin/bash

# Author: Marios Karagiannopoulos {mariosk@gmail.com}
# https://unmineable.com/coins

echo "COIN=${COIN}"
echo "WALLET_ADDRESS=${WALLET_ADDRESS}"

if [ -z "$COIN" ] || [ -z "$WALLET_ADDRESS" ]; then
    echo "You need to define COIN and WALLET_ADDRESS environment variables..."
    exit 2
fi

USA_SERVER=rx-us.unmineable.com:3333
EU_SERVER=rx-eu.unmineable.com:3333
ASIA_SERVER=rx-asia.unmineable.com:3333

./xmrig -o $EU_SERVER -u $COIN:$WALLET_ADDRESS.wini3#e4xd-wmzl -p x --cpu-no-yield
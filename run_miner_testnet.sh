#!/bin/bash
# DESCRPTION: Run miner on testNet

# load env
set -a
source .env
set +a

# print env
echo "Wallet: ${WALLET_TESTNET}"
echo "Hotkey: ${HOTKEY_TESTNET}"

# activate venv
source .venv/bin/activate

# run miner
python -m neurons.miner --wallet.name ${WALLET_TESTNET} --wallet.hotkey ${HOTKEY_TESTNET} --logging.debug --subtensor.network test --netuid 116 --start-dashboard
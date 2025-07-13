#!/bin/bash
# DESCRPTION: Run miner on mainNet

# load env
set -a
source .env
set +a

# print env
echo "Wallet: ${WALLET}"
echo "Hotkey: ${HOTKEY}"

# activate venv
source venv/bin/activate

# run miner
python -m neurons.miner --wallet.name ${WALLET} --wallet.hotkey ${HOTKEY} --logging.debug --subtensor.network main --netuid 8 --start-dashboard
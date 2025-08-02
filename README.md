# Termux NFT Minting Script

Use this bash script to mint NFTs on Ethereum testnet (e.g., Sepolia) using Termux.

## Setup

```bash
pkg update -y
pkg install git curl wget -y
curl -L https://foundry.paradigm.xyz | bash
source ~/.bashrc
foundryup

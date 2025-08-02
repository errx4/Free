#!/data/data/com.termux/files/usr/bin/bash

echo "=== NFT Minting Script (Termux) ==="

# Get inputs from user
read -p "Enter Private Key: " PRIVATE_KEY
read -p "Enter NFT Contract Address: " CONTRACT_ADDRESS

# You can add this if you'd like to support different mint methods
read -p "Enter Mint Function Name (default: mint): " MINT_FUNCTION
MINT_FUNCTION=${MINT_FUNCTION:-mint}

# Use cast to call mint
cast send \
  --private-key "$PRIVATE_KEY" \
  "$CONTRACT_ADDRESS" \
  "$MINT_FUNCTION()" \
  --rpc-url https://eth-sepolia.api.onfinality.io/rpc?apikey=93d71d29-fa04-45b8-b574-3b4acb2856d5

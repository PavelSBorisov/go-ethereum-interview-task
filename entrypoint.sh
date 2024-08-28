#!/bin/sh
set -x

# Go to the hardhat directory and install the dependencies
echo "Installing dependencies..."
cd /hardhat
npm install

# Compile, test and deploy the contract
echo "Compiling, testing and deploying the contract..."
npx hardhat compile
npx hardhat test
yes | npx hardhat ignition deploy ./ignition/modules/Lock.js --network local --verbose

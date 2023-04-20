# Use Flashloan to getRich
Using flashloan interface to mint an NFT and transfer it to your wallet.

## Deploy the contract with NFT minting function and NFT transfer function
Deploy contract
```
npx hardhat run scripts/deploy.js --network goerli
```
Verify the contract
```
npx hardhat verify --network goerli [DEPLOYED ADDRESS] --contract 'contracts/getRich.sol:getRich' [BANK ADDRESS] [TOKEN ADDRESS] [WPC TOKEN ADDRESS]
```

<img width="1440" alt="截圖 2023-04-20 下午2 12 08" src="https://user-images.githubusercontent.com/71428683/233273978-3505c2aa-491e-4d4f-a000-f58bbec73eed.png">

## Write flashloan
<img width="1440" alt="截圖 2023-04-20 下午2 07 05" src="https://user-images.githubusercontent.com/71428683/233273028-351c0c7e-405b-492e-b00b-d02e1d7f4bf9.png">

## Transfer NFT
Find token_id inside the detail of NFT minting transaction 
<img width="1440" alt="截圖 2023-04-20 下午2 18 56" src="https://user-images.githubusercontent.com/71428683/233275300-3182f012-30a2-4284-9a67-ef1a0c91b0cb.png">

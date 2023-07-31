# Degen Gaming Token (DGT) Smart Contract

This is a Solidity smart contract for the Degen Gaming Token (DGT) which is an ERC20 token on the Ethereum blockchain. The contract allows users to interact with the token, including transferring tokens, burning tokens, minting new tokens (only accessible to the contract owner), and redeeming tokens for in-game items in the Degen Gaming platform's store.

## Token Information

Name: Degen 

Symbol: DGT

Decimals: 18

Total Supply: 0 (initially minted to the contract owner)


## Key Features

1. ERC20 Standard: The token follows the ERC20 standard, providing the basic functionalities of an ERC20 token, including transfer and transferFrom.

2. Redemption System: Users can redeem tokens for in-game items from the Degen Gaming platform's store. The redemption rate is set at 100 tokens for 1 item, and users need to have sufficient tokens to perform the redemption.

3. Store Management: The contract owner can add items to the in-game store along with their corresponding prices.

4. Minting Tokens: The contract owner has the authority to mint new tokens. This can be used to increase the total supply or to distribute tokens for various purposes.

5. Burning Tokens: Users can burn (destroy) their own tokens if they wish to reduce their token balance.


## Usage

1. Redemption: To redeem tokens for in-game items, users should call the redeem function and specify the item name and the number of items they want to redeem. The number of tokens required for redemption will be calculated based on the item's price and the redeem rate. Tokens will be burned from the user's balance, and the redeemed item will be recorded.

2. Store Management: The contract owner can add new items to the store and set their prices by calling the addItemToStore function.

3. Minting: The contract owner can mint new tokens for various purposes by calling the mint function and specifying the recipient's address and the amount of tokens to mint.

4. Burning: Users can burn their tokens by calling the burn function and specifying the amount of tokens they want to destroy.

5. Deploying the Contract
To deploy the Degen Gaming Token contract, you need to use a development environment like Remix, Truffle, or Hardhat. After deployment, you can interact with the contract through its functions using a web3 provider, like MetaMask, or through other Ethereum-compatible platforms.

## Author

Reeti Singh


## License
This project is licensed under the MIT License. See LICENSE for more details.

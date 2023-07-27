# ExceptionExample Smart Contract
This repository contains a Solidity smart contract called "ExceptionExample." The contract demonstrates the use of different exception-handling techniques in Solidity.

## Table of Contents
Overview

Requirements

Installation

Usage

Exception Handling

License

## Overview
The ExceptionExample contract is a simple demonstration of how to handle exceptions and errors in Solidity. It includes three functions:

1. setValue(uint _value) external: This function sets the value variable of the contract to the provided _value. It uses require() to validate that the input _value is greater than zero.

2. getValue() external view returns (uint): This function allows external callers to retrieve the current value stored in the value variable.

3. assertExample() external pure: This function showcases the usage of assert() to check for logical errors. It verifies that the sum of two variables x and y is equal to 3.

4. revertExample() external pure: This function demonstrates the use of revert() to handle exceptional conditions. It attempts to divide x by y, but before doing so, it checks if y is zero, and if so, reverts with the error message "Cannot divide by zero."

## Requirements
To interact with this smart contract, you will need the following:

Ethereum wallet (e.g., MetaMask) or an Ethereum client (e.g., Geth, Parity)
Solidity-compatible development environment (e.g., Remix, Truffle)


## Installation

1. Clone this repository to your local machine.

   ```bash
      git clone https://github.com/your-username/your-repo.git
      cd your-repo

2. Set up your Solidity development environment.

## Usage
After setting up your Solidity development environment, you can deploy and interact with the ExceptionExample contract using your preferred Ethereum wallet or client.

Exception Handling
The ExceptionExample contract demonstrates three different exception handling techniques:

1. Using require(): The `setValue(uint _value)` function uses `require()` to validate the `input _value`. It ensures that the provided value is greater than zero, and if not, it will revert the transaction with the error message "Value must be greater than zero."

2. Using assert(): The `assertExample()` function uses `assert()` to check for logical errors. It verifies that the sum of two variables x and y is equal to 3. If the sum is not equal to 3, the contract will throw an exception.

3. Using revert(): The `revertExample()` function demonstrates how to handle exceptional conditions. It attempts to divide x by y, but before doing so, it checks if y is zero. If y is zero, the contract will revert with the error message "Cannot divide by zero."

## Author

Reeti Singh

## License
This project is licensed under the MIT License.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExceptionExample {
    uint public value;

    function setValue(uint _value) external {
        // Using require() to validate input
        require(_value > 0, "Value must be greater than zero");

        value = _value;
    }

    function getValue() external view returns (uint) {
        return value;
    }

    function assertExample() external pure {
        uint x = 1;
        uint y = 2;

        // Using assert() to check for logical errors
        assert(x + y == 3);
    }

   function revertExample() external pure {
    uint x = 10;
    uint y = 0;

    // Using revert() to handle exceptional conditions
    if (y == 0) {
        revert("Cannot divide by zero");
    }

    x = x / y;
}

}

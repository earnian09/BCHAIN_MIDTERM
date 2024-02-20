// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract MappingExample {
    mapping(address => uint256) public valueMapping;

    modifier nonZeroValue(uint256 _value) {
        require(_value != 0, "Value cannot be zero");
        _;
    }

    modifier valueHasBeenSet() {
        require(valueMapping[msg.sender] != 0, "No value set for sender");
        _;
    }




    // function setValue(uint256 _value) public {
    //     require(_value != 0, "Value set for sender");
    //     valueMapping[msg.sender] = _value;
    // }

    // function getValue() public view returns (uint256){
    //     require(valueMapping[msg.sender] != 0, "NO value for sender");
    //     return valueMapping[msg.sender];
    // }

    function setValue(uint256 _value) public nonZeroValue(_value){
        
        valueMapping[msg.sender] = _value;
    }

    function getValue() public view valueHasBeenSet returns (uint256){
        return valueMapping[msg.sender];
    }
    
} 
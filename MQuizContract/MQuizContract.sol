// pragma solidity ^0.8.0;

// import "hardhat/console.sol";

// contract MappingExample {
//     mapping(address => uint256) public valueMapping;
//     address public owner;

//     constructor() {
//         owner = msg.sender;
//     }

   

//     modifier nonZeroValue(uint256 _age) {
//         require(_age != 0, "Value cannot be zero");
//         require(msg.sender == owner, "not owner");
//         _;
//     }


//     modifier valueHasBeenSet()  {
//         require(valueMapping[msg.sender] != 0, "No value set for sender");
//         require(msg.sender == owner, "not owner");
//         _;
//     }







//     function setAge(uint256 _age) public nonZeroValue(_age) {
        
//         valueMapping[msg.sender] = _age;
//     }








//     function getAge() public view valueHasBeenSet returns (uint256){
//         return valueMapping[msg.sender];
//     }



    
// } 



pragma solidity ^0.8.1;

import "hardhat/console.sol";

contract Ownable {
    address public owner;
    uint public age;
    uint public hrsWrk;
    uint public rate;
    uint public totSal;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    // sets

    function setAge(uint256 _Age) public{
        age = _Age;
    }

    function setHrsWrk(uint256 _HrsWrk) public onlyOwner {
        hrsWrk = _HrsWrk;
    }

    function setRate(uint256 _Rate) public onlyOwner {
        rate = _Rate;
    }
    
    function calculateTotSal() public onlyOwner {
        if(hrsWrk > 0 && rate > 0) {
            totSal = hrsWrk * rate;
        }else {
            revert("Please adjust the specified hours rate and hours worked greater than zero");
        }
        
        
       
    }
 
} 
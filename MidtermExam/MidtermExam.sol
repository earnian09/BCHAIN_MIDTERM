pragma solidity >=0.8.0;

contract Owner {
    uint256 public prelimGrade;
    uint256 public midtermGrade;
    uint256 public finalsGrade;
    uint256 public gradeStatus;
    string public name;
    address public owner;



    event OwnerSet(address indexed oldOwner, address indexed newOwner);

    modifier isOwner() {
        require(msg.sender == owner, "Caller is not owner");
        _;
    }

     constructor() {
        owner = msg.sender; // 'msg.sender' is sender of current call, contract deployer for a constructor
        emit OwnerSet(address(0), owner);
    }

    modifier validGrade(uint256 input) {
        require(input <= 100, "dsds");
        _;
    }
    
    function setName(string memory _name) public isOwner {
        name = _name;
    }
  
    function setPrelimGrade(uint256 _prelimGrade) public isOwner validGrade(_prelimGrade) {
        prelimGrade = _prelimGrade;
    }
    function setMidternm(uint256 _midtermGrade) public isOwner validGrade(_midtermGrade){
        midtermGrade = _midtermGrade;
    }
    function setFinalGrade(uint256 _finalsGrade) public isOwner validGrade(_finalsGrade){
        finalsGrade = _finalsGrade;
    }

   function calculateGrade() public isOwner {
        uint256 average =(prelimGrade + midtermGrade + finalsGrade)/3;
        if (average <= 74){
            gradeStatus = 0;
        }
        else if (average >= 75){
            gradeStatus = 1;
        }
    }
} 
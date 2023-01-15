pragma solidity 0.5.1;

contract Modifiers{

    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
// Custom modifiers creation
    address public owner;
    modifier onlyOwner(){
        // The one calling the function is owner? 
        // If not than throws error (Error Handling in solidity)
        require(msg.sender == owner);
        _;
        // we can put _; inside the modifier when we want to execute the function, e.g., after checking if something is correct.
    }

    constructor() public{
        
        owner = msg.sender;
    }


    function addPerson(
        string memory _firstName, 
        string memory _lastName
    ) 
        public
        onlyOwner
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }


    function incrementCount() internal {
        peopleCount += 1;
    }
}

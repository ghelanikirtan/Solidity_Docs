pragma solidity 0.5.1;

contract Time{

    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    // using Epoch time for finding current time;
    uint256 openingTime = 1671739660; 
    uint256 ot = block.timestamp + 60;

    modifier onlyWhileOpen(){

        require(block.timestamp >= ot);
        _;
    }


    function addPerson(
        string memory _firstName, 
        string memory _lastName
    ) 
        public
        onlyWhileOpen
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }


    function incrementCount() internal {
        peopleCount += 1;
    }
}

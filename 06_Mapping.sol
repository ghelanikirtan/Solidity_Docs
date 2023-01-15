pragma solidity 0.5.1;

// Same thing as that of prev. file,
// But will use mapping concept here instead of array;

contract Mapping{

    struct Person{
        uint _id;
        string _firstName;
        string _lastName;
    }

    uint256 public peopleCount = 0;

    // Mapping: (key=>value) pair
    mapping(uint => Person) public people;

    function addPerson(string memory _firstName, string memory _lastName) public{
        // peopleCount += 1; 
        incrementCount();

        // name[key] = value(_params,...)
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }


    // Private functions (Internal modifiers, Opposite to that of public)
    function incrementCount() internal {
        peopleCount += 1;
    }

    function decrementCount() internal {
        peopleCount -= 1;
    }

}
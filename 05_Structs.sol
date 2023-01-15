pragma solidity 0.5.1;

contract structures{

    struct Person {
        string _firstName;
        string _lastName;
        string _regNo;
    }

    // Using Structure as a data Structure
    Person public GOAT = Person("Virat", "Kohli", "18");
    
    // Array declaration
    Person[] public students;  
    // Person public RA2011003020037;

    // For avoiding errors:
    uint256 public peopleCount;

    // adding values to the array (push)
    function addPerson(string memory _firstName, string memory _lastName, string memory _regNo) public {
        students.push(Person(_firstName, _lastName, _regNo));
        peopleCount += 1;
    }

    
}
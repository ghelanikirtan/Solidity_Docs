pragma solidity 0.5.1;

contract classroom{

    uint[] registrationNumber;  

    struct student{
        // uint _id;
        uint _regNo;
        string _firstName;
        string _lastName;
    }

    uint256 public studCount = 0;

    mapping(uint => student) public CSE_J;

    function addStudent(uint _regNo, string memory _firstName, string memory _lastName) public{
        registrationNumber.push(_regNo);
        CSE_J[registrationNumber[studCount]] = student(_regNo, _firstName, _lastName);

        studCount += 1;
    }




}
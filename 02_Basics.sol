pragma solidity 0.5.1;

contract MyContract{

    // Data type
    // This gives function get() by default - same variable as name;
    string public value;

    constructor() public{
        value = "myValue";
    }

    // can also set default value without using constructor
    string public firstName = "Kirtan"; 

    // constant - cannot be reassigned;
    string public constant lastName = "Ghelani";

    function set(string memory _value) public{
        value = _value;
        // firstName = _firstName;
    }

}
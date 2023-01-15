pragma solidity 0.5.1;
// pragma solidity >=0.7.0 <0.9.0;

// Declaring a smart contract
// Smart Contracts: are basically a class accessible publically
// users on the internet can run the contracts on their networks

contract myContract{
    // read & write a value of a variable here
    // The below data will stored in the actual blockchain storage
    string value;

    // constructor
    constructor() public{
        value = "myValue";
    }

    // read
    function get() public view returns(string memory){
        return value;
    }

    function set(string memory _value ) public{
        value = _value;
    }
}
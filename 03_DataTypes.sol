pragma solidity 0.5.1;

contract dataTyes{
    string public constant stringValue = "mtString";
    bool public myBool = true;
    int public myInt = -1;
    uint public myUint = 1; //cannot be negative
    uint8 public myUint8 = 255; //specifying bytes
    address public add ; // used for holding account addresses
    
    // Array Declaration
    int[] public set1 = [1,23,4];
    // Will see loops and other ways of declaration later;
}
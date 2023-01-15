pragma solidity 0.5.1;

contract customerDetails{

    struct customer{
        uint _id;
        string _firstName;
        string _lastName;
        string _countryCode;
        uint256 _mobileNo;
        string _email;
    }

    uint256 public customer_count = 0;

    // mapping 
    mapping(uint => customer) public customerDF;

    // userInput
    // uint id;
    string firstName;
    string lastName;
    string countryCode;
    uint256 mobileNo;
    string email;
    bool flag1 = false;
    bool flag2 = false;
    bool flag3 = false;

    function First_Last(string memory fname, string memory lname) public{
        firstName = fname;
        lastName = lname;
        flag1 = true;
    }

    function countryCode_Mobile(string memory cCode, uint moNo) public{
        countryCode = cCode;
        mobileNo = moNo;
        flag2 = true;
    }

    function Email_ID(string memory _emailID) public{
        email = _emailID;
        flag3 = true;
    }

    function SignUp() public returns(string memory){ 

        if(flag1 && flag2 && flag3){
            customer_count += 1;

            customerDF[customer_count] = customer(customer_count, firstName, lastName, countryCode, mobileNo, email);
        }else{
            return "Invalid Details";
        }
    }
}
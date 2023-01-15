pragma solidity 0.5.1;

contract myContract{
//Criteria:
// Sending funds (ether) to wallet
// Recieving Token in our address (account i.e. sender) 


    // Checking balance (Track the token)
    mapping(address => uint256) public balances; 

    address payable public sender_wallet = msg.sender;
    // Track a wallet (Send funds to this wallet)
    address payable public wallet;

    // Set a wallet
    constructor(address payable _wallet) public{
        wallet = _wallet;
    }


    function buyToken() public payable{
        // Buy a token
        balances[msg.sender] += 1;
        sender_wallet = msg.sender;
        
        // Send Ether to the Wallet
        wallet.transfer(msg.value);


    }



}
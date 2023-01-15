pragma solidity 0.5.1;

contract enumeratedList{

    // like a python list;
    // 0-Waiting
    // 1-Ready
    // 2-Active
    enum State{ Waiting, Ready, Active}

    // declaring
    State public state;
    State public resultState;

    constructor() public{
        state = State.Waiting;   
        resultState = State.Active;   
    }

    function activate() public{
        state = State.Active;
    }

    function deactivate() public{
        state = State.Waiting;
    }

    function isActive() public view returns(bool){
        return state == State.Active;
    }

}
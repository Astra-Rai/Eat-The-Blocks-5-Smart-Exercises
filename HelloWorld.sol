
//extension for smart contract is sol
//specify version of solidity we are using

pragma solidity  ^0.5.0;

//Creating a function and call it outside of the smart contract
//contact is a keyworld that defines the smart contact, use camel case

contract HelloWorld{
    //define function using function keyworld
    //syntax error: no visibility specified
    //functions in solidity can be internal or external
    //function should be albe to be called outside of smart contract, use public visibility keyword
    //must specify writen type of functions, we are returning string
    //not saving string in blockchain, saving the variable temporarily 
    //pure: keyword 'this is a read only function, do not modify blockchain
   
    function hello() pure public returns (string memory){
     
        //the fuction hello return a static string
        
        //return statement does not have an 's'
        return 'Hello World';
    }
}

//remix will create a button for each function to interact w/smart contract after its been delopye
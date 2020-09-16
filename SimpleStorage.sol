//function will store, modify and read a string value

pragma solidity ^0.5.0;

contract SimpleStorage {
    //variable accessible outside string, use the public keyword to specify public visibility
    //variable declared outside of the function, automatically given storage memore
    //storage = saved on the blockchain
    //data variable is not a temporary variable

    //string public data = 'mydata';

    string public data;
    function set(string memory _data) public {
    data =_data;
    //remix will create a button, which is a getter function
    
    }
}

//transaction: sending of data package that can potentially modify the state of the blockchain
//transction receipt: json object
//transaction hash: 'id' for transaction
//account # and transaction same
//note a transaction and call are two different things
//call does not modify the blockchain
//set function input field: change string. click on transact button, the data button to read string stored in data variable
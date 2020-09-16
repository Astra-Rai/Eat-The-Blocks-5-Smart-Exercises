

pragma solidity ^0.5.0;

contract SimpleStorage {
    
    //declare a variable, type string and give the name 'data', do not initialized variable
    //do not initialized = do not assign a value to the variable
    string public data;

    /*
    -function parameter data type: string
    -Do not use 'data' as a fuction parameter, the variable data when then be shadowed...
    -Use underscore instead, in this case: _data
    -funciton the function 'set' is executed as a call 
    -this function is excuted inside of a transaction
    */
    function allows value of variable data to be set to a string (data =_data)
    function set(string memory _data) public {
        data = _data;
    }
/*
    -funciton doesn't take argument
    -funciton uses keyword 'view', to read the storage of smart contract
    -return type is a string
    -temporary variable, memory 
    -call function, nothing is changed on the blockchain
    -view indicates that 'get' is a read only function
 */   
    function get() view public returns (string memory)  {
        return data;
  
    }
}

/* 
-notes: 
read only, call function doesn't cost gas
transaction, cost gas
-






*/
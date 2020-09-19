pragma solidity ^0.5.0;
contract AdvancedStorage{
    //specify an array of integers, visibility set to public
    uint[] public ids;
    //function will add new element to array, it will take an integer argument 'id'
    //function will modify storage of the blockchain, a transaction will take place
    //function takes an integer argument
    function add(uint id) public {
       
       //append element to tend of array using push method
        ids.push(id);
    }
    //function that will display the element at index position
    function get(uint position) view public returns (uint){
        //use bracket syntax to access a specific element of an array in solidity
        return ids[position];
    }
    //view keyword use: function getAll() is a read only function
    //function returns and array of integers
    //for array, memory location must be specified
    function getAll() view public returns (uint [] memory){
        //return elements in the array 'ids'
        return ids;
    }
    //function returns a interger value, is read only, does not have a parameter
    //.length yields the fixed length of the byte array (read-only).

    function length() view public returns (uint){
        return ids.length;
    }
    
}
   
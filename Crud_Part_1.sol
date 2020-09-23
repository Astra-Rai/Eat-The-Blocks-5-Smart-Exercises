pragma solidity ^0.5.0;
//create, read, update, delete
//smart contract name Crud
contract Crud {
    //struct will allow the creation of custom representation of data
    //1st field of struct integer = uint id, 2nd field of struc is a string = string name
    //struct is similar to javascript object w/o the method
    //this is a type declaration and doesn't create any instance of the struct
    struct User {
        uint id;
        string name;
    }
    //this is an array of the user struct. Note struc name is 'User' and array name is 'users'
    //public visibility
    //name of array is 'users',  [ ] square brackets specify an array 
    //as users are created, id field must be incremented, we need to keep track of next id
    User[] public users;
    uint public nextId;
    //function create, creates a new users
    //function takes one argument, a string, 'name' is the function parameter
    //public = function create() can be called from outside of smart contract
    function create(string memory name) public {
        //create new instance of a struct User(nextId,name)
        //pass parameter in same order they are defined in the struct type
        //put instances in users array = user.push(UserId,name));
        users.push(User(nextId, name));
        //increment nextId for the next time 'create' function is called
        nextId++;
    }
    //function read will read a specific instance of user
    //string is a complex type, so specifiy memory
    //in solidity, a function can return several values
    function read (uint id) view public returns (uint, string memory) {
        for(uint i = 0; i < users.length; i++){
            //current id compared to id passed as parameter of function read
            if(users[i].id == id ){
                //return id of user and name of user
                return(users[i].id, users[i].name);
            }
        }
    }
}
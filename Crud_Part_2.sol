pragma solidity ^0.5.0;

contract Crud {
    struct User {
        uint id;
        string name;
    }
    User[] public users;
    uint public nextId;
    
    function create(string memory name) public {
        users.push(User(nextId, name));
        nextId++;
    }
    
    function read (uint id) view public returns (uint, string memory) {
        for(uint i = 0; i < users.length; i++){
            if(users[i].id == id ){
                return(users[i].id, users[i].name);
            }
        }
    }
    
    //function udate dtakes two parameters, id then string
    function update(uint id, string memory name) public {
        //loop through the users array
        for(uint i =0; i < users.length; i++) {
            if(users[i].id == id) {
                //when we find the correct struct instance, access the name field and assign it to the name parameter received in  the function 
                users[id].name = name;
            }
        }
    }
    //function will receive an id as a parameter, is a public function
    function destroy(uint id) public {
        //delete is a special keyword that is reserved
        //this will delete the element in the specified index of the array 'users'
        delete users[id];
    }
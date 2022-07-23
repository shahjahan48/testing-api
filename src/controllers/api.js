const repository = require('../repositories/UsersRepository');
var user = require('../models/Users');

repository.getUsers().then(results=>{
    console.log(results);
})
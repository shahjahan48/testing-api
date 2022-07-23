var config = require('../db/dbconfig');
var sql = require('mssql');

async function getUsers(){
    try {
        let connection = await sql.connect(config);
        console.log(connection);
    } catch (error) {
        console.log(error);
    }
}

module.exports = {
    getUsers: getUsers
}
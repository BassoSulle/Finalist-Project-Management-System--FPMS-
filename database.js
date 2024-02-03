const mysql = require('mysql')

const  connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'finalist',
    port: '3308'
});

connection.connect(function(error){
    if(error)
    {
        console.log(error);
    }
    else
    {
        console.log("Connected to the Database successfully!.");
    }
});

module.exports = connection;
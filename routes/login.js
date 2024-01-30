const express = require('express');
const router = express.Router();
const connection = require('../database');

router.get('/', function(req, res) {
    res.render('login');
});

router.post('/', function(req, res) {
    console.log(req.body);
   //  res.send(`Your username is ${req.body.email}, and your password is ${req.body.password}`);
   const sql = "insert into login values (null,?,?)";
   const values = [
      req.body.email,
      req.body.password
   ]

    connection.query(sql,values,function(err) {
        if (err) {
            throw err;
        } else {
            res.render('login',);
        }
    })
    connection.end();
});

module.exports = router;

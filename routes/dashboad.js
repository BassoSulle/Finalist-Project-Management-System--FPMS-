const express = require('express')
const routes = express.Router()
const connection = require('../database');

routes.get('/', function(req, res){
    res.render('layouts/dashboad')
 });


module.exports=routes;
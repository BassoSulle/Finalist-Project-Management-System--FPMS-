const express = require('express')
const routes = express.Router()

routes.get('/', function(req, res){
    res.render('layouts/dashboad')
 });


module.exports=routes;
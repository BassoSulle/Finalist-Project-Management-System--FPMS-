const express = require('express')
const router = express.Router()

router.get('/', function(req, res){
   res.render('index')
});
// router.get('/', function(req, res){
//     res.render('layouts/layout')
//  });


module.exports=router;
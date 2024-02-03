const express = require('express');
const router = express.Router();
const connection = require('../database');

router.get('/', function(req, res){
   res.render('studentproject');
});

router.post('/', function (req, res){
   console.log(req.body);

   const query ="insert into student_project values (null, ?,?,?,?,?,?,?,?)";
   const values = [
      req.body.first_name,
      req.body.middle_name || null,
      req.body.surname,
      req.body.registration_no,
      req.body.email,
      req.body.tittle,
      req.body.documentation,
      req.body.superviser_id
   ];
   
   connection.query(query, values, function(error){
      if(error) {
         console.error(error);
         return res.status(500).send('Error in saving data to database');
      } else {
         res.redirect('viewproject');
      }
   });
});

module.exports=router;
const express = require('express')
const router = express.Router()
const bodyParser = require('body-parser');
const connection = require('../database')

router.get('/', function(req, res){
   res.render('studentproject')
});

router.post('/add_studentproject',function (req, res){
   console.log(req.body);

   const query ="INSERT INTO student_project VALUES (null, ?,?,?,?,?,?,?,?)";
   const values = [
      req.body.first_name,
      req.body.middle_name || null,
      req.body.surname,
      req.body.registration_no,
      req.body.email,
      req.body.tittle,
      req.body.documentation,
      req.body.superviser_id,
   ];
   connection.query(query, values, function(error){
      if(error) 
      {
         throw error;
      }
      else
      {
         res.redirect('viewproject')
      }

   })
   connection.end();

});




module.exports=router;
const express = require('express')

const router = express.Router()
const connection = require('../database')


router.get('/',(req, res) => {
    res.render("viewprojects");
});

  // router.get('/', (req, res) => {
  //     console.log(req.body)
      
  //     const sql = 'SELECT * FROM student_project';

  //     connection.query(sql, (err, result) => {
  //       if (err) 
  //       {
  //         throw err;
  //       }
  //       res.json(result);
  //     });
  //   });

module.exports = router;

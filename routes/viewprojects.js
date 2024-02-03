const express = require('express')
const router = express.Router()
const connection = require('../database')


router.get('/',(req, res) => {
    res.render("viewprojects");
});


module.exports = router;
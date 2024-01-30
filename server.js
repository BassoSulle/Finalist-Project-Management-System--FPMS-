var express = require('express');
var bodyParser = require('body-parser');
var app = express();
var urlencodedParser = bodyParser.urlencoded({ extended: true }); // Fix typo here
var mysql = require('mysql');

// connect to port
var server = app.listen(8080, function () {
    console.log('Server is running');
});

app.use(bodyParser.json());
app.use(express.static('public'));
app.set("view engine", "pug");


const indexRouter = require('./routes/index');
const loginRouter = require('./routes/login');
const layoutRouter = require('./routes/dashboad');
const studentprojectRouter = require('./routes/studentproject');
const viewprojectRouter = require('./routes/viewprojects');


app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(bodyParser.urlencoded({ extended: true }));



app.use("/index",indexRouter);
app.use("/login",loginRouter);
app.use("/dashboad",layoutRouter);
app.use("/studentproject",studentprojectRouter);
app.use("/viewproject",viewprojectRouter);






var express = require('express');
var bodyParser = require('body-parser');
var app = express();
var mysql = require('mysql');

// Fix typo in bodyParser configuration
var urlencodedParser = bodyParser.urlencoded({ extended: true });

// Connect to port
var server = app.listen(8080, function () {
    console.log('Server is running');
});

// Middleware setup
app.use(express.static('public'));
app.use(bodyParser.json());
app.use(urlencodedParser); // Use the urlencodedParser middleware

app.set("view engine", "pug");

// Routes setup
const indexRouter = require('./routes/index');
const loginRouter = require('./routes/login');
const layout_Router = require('./routes/dashboad'); // Corrected typo in route name
const studentProjectRouter = require('./routes/studentproject'); // Corrected variable name to follow JavaScript convention
const viewProjectRouter = require('./routes/viewprojects'); // Corrected variable name to follow JavaScript convention

// Route handling
app.use("/index", indexRouter);
app.use("/login", loginRouter);
app.use("/dashboard", layout_Router);
app.use("/studentproject", studentProjectRouter);
app.use("/viewproject", viewProjectRouter);

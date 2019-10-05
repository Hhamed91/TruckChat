var express = require("express");
var app = express();
var path = require("path");


// var mysql = require("mysql");
// var connection = mysql.createConnection(process.env.JAWSDB_URL || keys.data);

// var keys = require("./keys.js");
// require("dotenv").config();

var app = require('express')();
var server = require('http').createServer(app);
var io = require('socket.io')(server);

app.use(express.static("public"));



app.get('/', function (req, res) {
  res.sendFile(path.join(__dirname + '/public/lib/index.html'));
})

app.listen( process.env.PORT || 3000, function(){
	console.log('listening.....');
})
const express = require('express');
const {createConnection}  = require('mysql');

const app = express();

var connection = createConnection({
    host:'localhost',
    user:'root',
    password:"987654321As*"
})

connection.connect(function(err){
    if(err)
       throw err
    else
       console.log('success in establishing connection!')
})
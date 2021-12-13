const express = require('express');
const app = express();
const mysql = require('mysql');
const config = {
    database:'mydatabase',
    host:'mydb',
    user:'root',
    password:'mypassword',
};
const com = mysql.createConnection(config);

const sql = "INSERT INTO people(name)VALUES('gil')";
com.query(sql)
com.end();
const port = 3000;


app.get('/',(req,res)=>{
    res.send("oiiii!!!!!")
})

app.listen(port,()=>{
    console.log("oiiiiiii!!");
})
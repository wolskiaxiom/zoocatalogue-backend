const express = require('express')
const mysql = require('mysql')
const fs = require('fs');
const dataSql = fs.readFileSync('./db-scripts/another-full-drop.sql').toString()

// Create connectoin
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'nodemysql',
    multipleStatements: true
});

// Connect to MySql
db.connect(err => {
    if(err) {
        throw err
    }
    console.log('MySQL connected!')
});
// full-drop-create-db
db.query(dataSql, (err) => {
    if (err) {
        throw err;
    }
})

const app = express()

//Create Database
app.get('/createdb', (req, res) => {
    let sql = 'CREATE DATABASE nodemysql'
    db.query(sql, (err) => {
        if(err) {
            throw err;
        }
        res.send("Database created!")
    })
});

app.get('/', (req, res) => {
    res.send('Hello World!')
})

app.get('/stoplistening', (req, res) => {
    res.send('Stopping app...')
    server.close()
})


var server = app.listen('3333', () => {
    console.log('Server started!')
})

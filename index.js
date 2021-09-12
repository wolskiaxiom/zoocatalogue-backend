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

app.use((req, res, next) => {
    res.append('Access-Control-Allow-Origin', ['*']);
    res.append('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.append('Access-Control-Allow-Headers', 'Content-Type');
    next();
});
app.use(express.json());
app.use(express.text());
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

app.get('/getallanimals', ((req, res) => {
    let sql = 'SELECT * FROM animals;'
    db.query(sql, (err, result) => {
        if(err) {
            throw err;
        }
        res.send(result)
    })
}))

app.post('/order', ((req, res) => {
    let order = req.body;
    db.query('INSERT INTO orders SET ?', {
        customer_email: order.customer_email,
        customer_nick: order.customer_nick,
        customer_address1: order.customer_address1,
        customer_address2: order.customer_address2,
        customer_city: order.customer_city,
        customer_zipcode: order.customer_zipcode,
        total_price: order.total_price,
        comments: order.comments
    }, (err, result, fields) => {
        if (err) throw err;
        orderItems = order.order_items;
        let orderId = result.insertId;
        orderItems.forEach((order_item) => {
            db.query('INSERT INTO order_items SET ?', {
                order_id: orderId,
                item_id: order_item.item_id,
                items_num: order_item.item_num
            });
            let filters = [order_item.item_num, order_item.item_id];
            db.query('UPDATE animals set in_stock = in_stock - ? where id = ? ', filters, (err, result) => {
                if (err) throw err;
            })
        })
    } )
    res.send(req.body);
}));


var server = app.listen('3333', () => {
    console.log('Server started!')
})

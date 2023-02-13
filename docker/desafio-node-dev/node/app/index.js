const express = require('express')
const app = express()
const port = 8080
const config = {
    host: 'db',
    user: 'root',
    password: 'root',
    database: 'node_db'
};
const mysql = require('mysql')

app.get('/', (req, res) => {
    const connection = mysql.createConnection(config)

    // insert
    const insert = `INSERT INTO people (name) VALUES ('Dimitri ` + Math.random() + `')`
    connection.query(insert)

    // select and build response
    connection.query(`SELECT name FROM people`, (err, rows, fields) => {
        if(!err) {
            res.send('<h1>Full Cycle Rocks!</h1>' + rows.map(row => row.name).join('<br>'));
        } else {
            console.log(err);
            res.sendStatus(500);
        }
    });

    connection.end
})

app.listen(port, () => {
    console.log('Running at port ' + port)
})
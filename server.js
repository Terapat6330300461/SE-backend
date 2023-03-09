var express = require('express')
var cors = require('cors')
var app = express()
var mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Anz31135!',
    port: '3306',
    database: 'travel'
});

app.use(cors())

app.get('/api/attractions', function (req, res, next) {
    connection.query(
        'SELECT * from attractions',
        function(err,results,fields){
            console.log(results);
            res.json(results)
        }
    );
    
})


app.get('/api/att', (req, res) => {
    sql = 'SELECT * from attractions'
    connection.query(sql,(error, results) => {
      if (error) {
        console.log('Error fetching data: ', error);
        res.status(500).json({
          error: error
        });
      } else {
        res.json({
          results
        });
      }
    });
  });

app.listen(5000, function () {
    console.log('CORS-enabled web server listening on port 5000')
})
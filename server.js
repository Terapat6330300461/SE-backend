const mysql = require('mysql');
const cors = require('cors');
const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Anz31135!',
  port: '3306',
  database: 'se_db'
});

app.use(cors());

connection.connect();

//MOBILE 

//get account
app.get('/se_db/account', (req, res, next) => {

  const query = 'SELECT * FROM account';
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });

})

//get account car
app.get('/se_db/account/car', (req, res, next) => {
  const username = req.query.username;
  const query = `SELECT * FROM car WHERE username = "${username}"`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });

})

//get account plug
app.get('/se_db/account/plug', (req, res, next) => {
  const username = req.query.username;
  const query = `SELECT * FROM plug WHERE username = "${username}"`;;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });

})

//insert basic account
app.post('/se_db/account/register', (req, res) => {

  const firstname = req.body.firstname;
  const lastname = req.body.lastname;
  const email = req.body.email;
  const username = req.body.username;
  const password = req.body.password;
  const phone = req.body.phone;
  const icon = req.body.icon;
  const point = req.body.point;
  const expirePoint = req.body.expirePoint;
  const value = [firstname, lastname, email, username, password, phone, icon, point, expirePoint]
  const sql = 'INSERT INTO account (firstname, lastname, email, username, password, phone, icon, point, expirePoint) VALUE ( ?, ?, ?, ?, ?, ?, ?, ?, ? )';
  connection.query(sql, value, (err, result) => {
    if (err) {
      console.log('Error fetching data: ', err);
      res.status(500).json({
        error: err
      });
    } else {
      res.status(200).json({
        result: "บันทึกข้อมูลแล้ว",
        query: sql,
        data: {
          value
        }
      });
    }
  })
})

//insert basic account car
app.post('/se_db/account/register/car', (req, res) => {

  const brand1 = req.body.brand1;
  const model1 = req.body.model1;
  const regis1 = req.body.regis1;
  const brand2 = req.body.brand2;
  const model2 = req.body.model2;
  const regis2 = req.body.regis2;
  const brand3 = req.body.brand3;
  const model3 = req.body.model3;
  const regis3 = req.body.regis3;
  const numcar = req.body.numcar;
  const username = req.body.username;
  const value = [brand1, model1, regis1, brand2, model2, regis2, brand3, model3, regis3, numcar, username]
  const sql = 'INSERT INTO car (brand1, model1, regis1, brand2, model2, regis2, brand3, model3, regis3, numcar,username) VALUE ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )';
  connection.query(sql, value, (err, result) => {
    if (err) {
      console.log('Error fetching data: ', err);
      res.status(500).json({
        error: err
      });
    } else {
      res.status(200).json({
        result: "บันทึกข้อมูลแล้ว",
        query: sql,
        data: {
          value
        }
      });
    }
  })
})

//insert basic account plug
app.post('/se_db/account/register/plug', (req, res) => {
  const plug0 = req.body.plug0;
  const plug1 = req.body.plug1;
  const plug2 = req.body.plug2;
  const plug3 = req.body.plug3;
  const plug4 = req.body.plug4;
  const plug5 = req.body.plug5;
  const plug6 = req.body.plug6;
  const plug7 = req.body.plug7;
  const plug8 = req.body.plug8;
  const plug9 = req.body.plug9;
  const plug10 = req.body.plug10;
  const plug11 = req.body.plug11;
  const plug12 = req.body.plug12;
  const username = req.body.username;
  const value = [plug0, plug1, plug2, plug3, plug4, plug5, plug6, plug7, plug8, plug9, plug10, plug11, plug12, username]
  const sql = 'INSERT INTO plug (plug0,plug1, plug2, plug3, plug4, plug5, plug6, plug7, plug8, plug9, plug10,plug11,plug12,username) VALUE ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ? )';
  connection.query(sql, value, (err, result) => {
    if (err) {
      console.log('Error fetching data: ', err);
      res.status(500).json({
        error: err
      });
    } else {
      res.status(200).json({
        result: "บันทึกข้อมูลแล้ว",
        query: sql,
        data: {
          value
        }
      });
    }
  })
})

//edit profile
app.put('/se_db/account/profile', (req, res) => {
  const username = req.body.username;
  const firstname = req.body.firstname;
  const lastname = req.body.lastname;
  const phone = req.body.phone;
  const email = req.body.email;
  const query = `UPDATE account SET firstname = '${firstname}', lastname = '${lastname}', phone = '${phone}', email = '${email}' WHERE username = '${username}'`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

//edit icon
app.put('/se_db/account/icon', (req, res) => {
  const username = req.body.username;
  const icon = req.body.icon
  const query = `UPDATE account SET icon = '${icon}' WHERE username = '${username}'`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

//edit car
app.put('/se_db/account/edit/car', (req, res) => {
  const brand1 = req.body.brand1;
  const model1 = req.body.model1;
  const regis1 = req.body.regis1;
  const brand2 = req.body.brand2;
  const model2 = req.body.model2;
  const regis2 = req.body.regis2;
  const brand3 = req.body.brand3;
  const model3 = req.body.model3;
  const regis3 = req.body.regis3;
  const numcar = req.body.numcar;
  const username = req.body.username;
  const query = `UPDATE car SET brand1 = '${brand1}', model1 = '${model1}', regis1 = '${regis1}', brand2 = '${brand2}', model2 = '${model2}', regis2 = '${regis2}',  brand3 = '${brand3}', model3 = '${model3}', regis3 = '${regis3}' , numcar = '${numcar}' WHERE username = '${username}'`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

//edit plug
app.put('/se_db/account/edit/plug', (req, res) => {
  const plug0 = req.body.plug0;
  const plug1 = req.body.plug1;
  const plug2 = req.body.plug2;
  const plug3 = req.body.plug3;
  const plug4 = req.body.plug4;
  const plug5 = req.body.plug5;
  const plug6 = req.body.plug6;
  const plug7 = req.body.plug7;
  const plug8 = req.body.plug8;
  const plug9 = req.body.plug9;
  const plug10 = req.body.plug10;
  const plug11 = req.body.plug11;
  const plug12 = req.body.plug12;
  const username = req.body.username;
  const query = `UPDATE plug SET plug0 = '${plug0}', plug1 = '${plug1}', plug2 = '${plug2}', plug3 = '${plug3}', plug4 = '${plug4}', plug5 = '${plug5}',  plug6 = '${plug6}', plug7 = '${plug7}', plug8 = '${plug8}' , plug9 = '${plug9}',  plug10 = '${plug10}', plug11 = '${plug11}', plug12 = '${plug12}'  WHERE username = '${username}'`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

//delete account
app.delete('/se_db/account/deleted', (req, res) => {
  const username = req.body.username;
  console.log(username)
  const query = `DELETE FROM account WHERE username = '${username}'`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

//delete car account
app.delete('/se_db/account/deleted/car', (req, res) => {
  const username = req.body.username;
  const query = `DELETE FROM car WHERE username = '${username}'`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

//delete plug account
app.delete('/se_db/account/deleted/plug', (req, res) => {
  const username = req.body.username;
  const query = `DELETE FROM plug WHERE username = '${username}'`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

//get userstation
app.get('/se_db/userstation', (req, res, next) => {

  const query = `SELECT * FROM userstation`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });

})

//get userstation plug
app.get('/se_db/userstation_plug', (req, res, next) => {

  const query = `SELECT * FROM userstation_plug`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });

})

//get userstation type
app.get('/se_db/userstation_type', (req, res, next) => {

  const query = `SELECT * FROM userstation_type`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });

})


//get userstation review
app.get('/se_db/userstation_review', (req, res, next) => {

  const query = `SELECT * FROM userstation_review`;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });

})

app.get('/se_db/userstation_marker', (req, res, next) => {

  const query = `SELECT * FROM userstation 
  INNER JOIN userstation_plug ON userstation.stationName=userstation_plug.stationName 
  INNER JOIN userstation_type ON userstation.stationName=userstation_type.stationName
  INNER JOIN userstation_review ON userstation.stationName=userstation_review.stationName 
  `;
  connection.query(query, (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });

})





// app.post('/se_db/account/:firstname/:lastname/:email/:username/:password/:phone/:icon/:point/:expirePoint', (req, res) => {
//   const { firstname } = req.params;
//   const { lastname } = req.params;
//   const { email } = req.params;
//   const { username } = req.params;
//   const { password } = req.params;
//   const { phone } = req.params;
//   const { icon } = req.params;
//   const { point } = req.params;
//   const { expirePoint } = req.params;
//   const query = `INSERT INTO account (firstname, lastname, email, username, password, phone, icon, point, expirePoint) VALUES ('${firstname}', '${lastname}','${email}', '${username}','${password}', '${phone}','${icon}', '${point}','${expirePoint}')`;
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });
// });

// app.delete('/se_db/account/:id', (req, res) => {
//   const { id } = req.params;
//   const query = `DELETE FROM account WHERE id = ${id}`;
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });
// });

// app.put('/se_db/account/:id/:firstname', (req, res) => {
//   const { id } = req.params;
//   const { firstname } = req.params;
//   const query = `UPDATE account SET firstname = '${firstname}' WHERE id = ${id}`;
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });
// });



// app.get('/se_db/test', (req, res, next) => {

//   const query = 'SELECT * FROM test';
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });

// })


// app.get('/se_db/hoho', (req, res, next) => {

//   const query = 'SELECT * FROM hoho';
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });

// })

// app.post('/se_db/hoho', (req, res, next) => {

//   const query = 'SELECT * FROM hoho';
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });

// })

// app.post('/api/create', (req, res) => {

//   const name = req.body.name
//   const value = [name]
//   const sql = 'INSERT INTO hoho (name) VALUE (  ? )';
//   connection.query(sql, value, (err, result) => {
//     if(err) {
//       console.log('Error fetching data: ',err);
//       res.status(500).json({
//         error: err
//       });
//     }else{
//       res.status(200).json({
//         result: "บันทึกข้อมูลแล้ว",
//         query: sql,
//         data: {
//           value
//         }
//       });
//     }
//   })
// })

// app.delete('/api/delete/:id', (req, res) => {

//   const { id } = req.params;
//   const query = `DELETE FROM hoho WHERE id = ${id}`;
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });
// })


// app.put('/api/update/:id', (req, res) => {
//   const { id } = req.params;
//   const name = req.body.name
//   const query = `UPDATE hoho SET name = '${name}' WHERE id = ${id}`;
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });
// });

// app.get('/se_db/hoho/:name', (req, res, next) => {
//   const { name } = req.params;
//   const query = `SELECT * FROM hoho WHERE name = '${name}'`;
//   connection.query(query, (error, results, fields) => {
//     if (error) throw error;
//     res.send(results);
//   });

// })



app.listen(5000, () => {
  console.log('Server is running on port 5000');

});

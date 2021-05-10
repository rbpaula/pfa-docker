const express = require('express')
const mysql = require('mysql')

const app = express()

app.get('/', (req,res) => {
    res.contentType('text/html')

    const con = mysql.createConnection({
        host: 'mysql',
        user: 'root',
        password: 'root',
        database: 'pfa-docker'
    })

    con.connect((err) => {
        if(err){
            return res.status(500).send(err)
        }
    })

    con.query('select * from modulos', (err, rows) => {
        if(err){
            return res.status(500).send(err)
        }
        let html = `
        <html>
          <head>
            <title>PFA Docker - Desafio 1</title>
          </head>
          <body border=1>
            <h2>PFA Docker - Desafio 1</h2>
            <h3>Lista de módulos</h3>
            <table>
              <thead>  
                <tr>
                  <th>ID</th>
                  <th>Módulo</th>
                </tr>
              </thead>
              <tbody>
      `;

      rows.forEach((row) => {
        html += `
                <tr>
                  <td>${row.id}</td>
                  <td>${row.nome}</td>
                </tr>
        `;
      });

      html += `
              </tbody>
            </table>
          </body>
        </html>
      `;

      con.end();

      return res.send(html);
        
    })
})

app.listen(3000, () => {
    console.log('Servidor rodando na porta 3000')
})
const express = require('express')
const mysql = require('mysql')
const bodyParser = require('body-parser')

const app = express()
const port = 3000;

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended: true
}))

const db = mysql.createConnection({
    host: '127.0.0.1',
    port: '3306',
    user: 'root',
    password: '',
    database: "tugas1"
})

//CRUD

app.get('/sembuh',  (req, res) => {
    let sql = `
        select nama_pasien, asal_pasien, umur_pasien, tgl_sembuh from pasien_sembuh
    `

    db.query(sql, (err, result) => {
        if (err) throw err

        res.json({
            message: "Sukses ambil data pasien yg sembuh",
            data: result
        })
    })
})

app.post('/sembuh', (req, res) => {
    let data = req.body

    let sql = `insert into pasien_sembuh (nama_pasien, asal_pasien, umur_pasien, tgl_sembuh)
    values ('`+data.nama_pasien+`', '`+data.asal_pasien+`', '`+data.umur_pasien+`', '`+data.tgl_sembuh+`')
`

db.query(sql, (err, result) => {
    if (err) throw err

    res.json({
        message: "Berhasil dibuat",
        data: result
    })
})
})

app.get('/sembuh/:id_pasien', (req, res) => {
let sql = `
    select * from pasien_sembuh
    where id_pasien = `+req.params.id_pasien+`
    limit 1
`

db.query(sql, (err, result) => {
    if (err) throw err

    res.json({
        message: "Sukses ambil data pasien berdasarkan id",
        data: result[0]
    })
})
})

app.put('/sembuh/:id_pasien', (req, res) => {
let data = req.body

let sql = `
    update pasien_sembuh
    set nama_pasien = '`+data.nama_pasien+`', asal_pasien = '`+data.asal_pasien+`', umur_pasien = '`+data.umur_pasien+`', tgl_sembuh = '`+data.tgl_sembuh+`'
    where id_pasien = '`+req.params.id_pasien+`'
`
db.query(sql, (err, result) => {
    if (err) throw err

    res.json({
        message: "Berhasil diedit",
        data: result
    })
})
})

app.delete('/sembuh/:id_pasien', (req, res) => {
let sql = `
    delete from pasien_sembuh
    where id_pasien = '`+req.params.id_pasien+`'
`

db.query(sql, (err, result) => {
    if (err) throw err
    
    res.json({
        message: "Data berhasil dihapus",
        data: result
    })
})
})

//Run Application
app.listen(port, () => {
    console.log('App running on port ' + port)
})
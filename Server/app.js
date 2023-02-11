const express = require('express')
const app = express()

const hockey = require('./routers/hockey.js')
app.use('/hockey', hockey)

const poi = require('./routers/poi.js')
app.use('/poi', poi)

app.listen(3000, () => {
    console.log("server is running")
})

const express = require('express')
const app = express()
//const port = 3000
const port = 10000

app.get('/', (req, res) => {
  console.log('GET PATH => /');
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

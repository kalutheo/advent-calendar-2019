const express = require("express")
const { postgraphile } = require("postgraphile")

const app = express()

app.use(
  postgraphile(
    //"postgres://username:pwd@localhost:5432/mydb"
    process.env.DATABASE_URL,
    "public",
    {
      watchPg: true,
      graphiql: true,
      enhanceGraphiql: true
    }
  )
)

app.listen(process.env.PORT || 3000)

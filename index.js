const express = require("express");
const bodyparser = require("body-parser");
const app = express();
const notesRoute = require("./route/notesRoute");

const dotenv = require("dotenv");
const { testConnection } = require("./database/Db");
dotenv.config();

app.use(bodyparser.json());

app.get("/", (req, res) => {
  res.send("Welcome to the Notes API Home Page!");
});

app.use(notesRoute);

app.listen(process.env.APP_PORT, async () => {
  await testConnection();
  console.log(`Server running at http://localhost:${process.env.APP_PORT}`);
});

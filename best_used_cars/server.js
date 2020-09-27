const express = require("express");
const app = express();
const cors = require("cors");
const port = 3000;
const path = require("path");

const { Client } = require("pg");
const databaseConfig =
  process.env.NODE_ENV === "production"
    ? {
        connectionString:
          "postgres://olofxajyclieon:d275cad6fc4ab508cd066450e35b2216ac7a30eed921974e03ac3b1750bff503@ec2-54-246-115-40.eu-west-1.compute.amazonaws.com:5432/db7ssg70jp6jql",
        ssl: { rejectUnauthorized: false },
      }
    : { user: "postgres", host: "127.0.0.1", database: "buc", port: 5432 };
const client = new Client(databaseConfig);
client.connect();

app.use(express.static("build"));
app.use(cors());

app.get("/brands", (req, res) => {
  client.query("SELECT * FROM brands", (err, response) => {
    res.json(response.rows);
  });
});
app.get("/cars", (req, res) => {
  const brand = req.query.brand;
  client.query(
    "SELECT  cars.*,brands.name AS brandname FROM cars LEFT JOIN brands ON cars.brand = brands.id WHERE brand = $1",
    [brand],
    (err, response) => {
      if (response) {
        res.json(response.rows);
      } else {
        res.json([]);
      }
    }
  );
});
app.get("/car/:id", (req, res) => {
  const id = req.params.id;
  client.query(
    "SELECT  cars.*,brands.name AS brandname FROM cars LEFT JOIN brands ON cars.brand = brands.id WHERE cars.id = $1",
    [id],
    (err, response) => {
      if (response) {
        res.json(response.rows[0]);
      } else {
        res.json({});
      }
    }
  );
});
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "build", "index.html"));
});
app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

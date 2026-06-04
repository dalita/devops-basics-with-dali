const express = require('express');
const { Client } = require('pg');

const app = express();

const client = new Client({
  host: 'postgres',
  user: 'postgres',
  password: process.env.DB_PASSWORD,
  database: 'myapp',
  port: 5432,
});

client.connect()
  .then(() => console.log('Connected to PostgreSQL'))
  .catch(err => console.error('Database connection error:', err));

app.get('/', (req, res) => {
  res.send('Docker Debug Demo');
});

app.listen(3000, () => {
  console.log('App running on port 3000');
});
const express = require('express');
const mysql = require('mysql');
const path = require('path');

const app = express();
const port = 3000;

// Set up the MySQL connection
const db = mysql.createConnection({
    host: process.env.DB_HOST || 'db',
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASSWORD || 'subhan123',
    database: process.env.DB_NAME || 'world',
});

db.connect((err) => {
    if (err) {
        console.error('Error connecting to the database:', err);
    } else {
        console.log('Connected to the MySQL database');
    }
});

// Set the view engine to Pug
app.set('views', path.join(__dirname, '../src/views'));
app.set('view engine', 'pug');

// Serve static files from the "public" directory
app.use(express.static(path.join(__dirname, '../public')));

// Define routes
app.get('/', (req, res) => {
    res.render('index');
});

app.get('/about', (req, res) => {
    const query = `
        SELECT Code, Name, Continent, Region, Population, Capital
        FROM Country
        ORDER BY Population DESC;
    `;

    db.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching data:', err);
            res.status(500).send('Server Error');
            return;
        }
        res.render('about', { countries: results });
    });
});

// Start the server
app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
});

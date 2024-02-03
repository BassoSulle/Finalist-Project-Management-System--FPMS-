const express = require('express');
const router = express.Router();
const connection = require('../database');

// Handle GET request to view projects
router.get('/', async (req, res) => {
    try {
        // Query to fetch student project data from the database
        const query = "SELECT * FROM student_project";
        connection.query(query, (error, results) => {
            if (error) {
                console.error('Error fetching student project data:', error);
                return res.status(500).send('Error fetching student project data');
            } else {
                console.log('Fetched student project data:', results);
                // Render the viewprojects.pug page with the fetched data
                res.render('viewprojects', { studentData: results });
            }
        });
    } catch (error) {
        console.error('Error handling GET request:', error);
        res.status(500).send('Error handling GET request');
    }
});

module.exports = router;

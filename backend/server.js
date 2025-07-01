// Basic Express API skeleton for Rehearsal Scheduler
const express = require('express');
const app = express();
app.use(express.json());
app.get('/', (req, res) => res.send('Rehearsal Scheduler API running'));
app.listen(3000, () => console.log('Server started on port 3000'));

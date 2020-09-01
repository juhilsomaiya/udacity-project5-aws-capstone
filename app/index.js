const express = require('express');
const app = express();
const port = process.env.PORT || 80;

app.get('/', (request, response) => {
    return response.send("Hello World ! My name is Juhil Somaiya and It's my Capstone Project :)");
});

app.listen(port, () => {
    console.log('Express server running on port: ' + port);
});

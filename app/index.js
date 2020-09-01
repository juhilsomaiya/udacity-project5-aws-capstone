const express = require('express');
const app = express();
const port = process.env.PORT || 80;

app.get('/', (request, response) => {
    return response.send("Hello, I'm Juhil Somaiya");
});

app.listen(port, () => {
    console.log('Express server running on port: ' + port);
});

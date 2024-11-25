const express = require('express');
const app = express();

app.listen(8080, () => {
    console.log("서버 실행중임");
});

app.get('/', (req, res) => {
    res.send("hi");
});
const express = require("express");
const cors = require("cors");
const columnRouter = require("./routes/column.routes");
require("dotenv").config();

const PORT = process.env.PORT || 8080;

const app = express();

app.use(cors());
app.use(express.json());
app.use("/api", columnRouter);

const server = app.listen(PORT, () => {
    const port = server.address().port;
    console.log(`server started on post ${port}`);
});

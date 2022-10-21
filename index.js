const express = require("express");
const cors = require("cors");
const columnRouter = require("./routes/column.routes");
require("dotenv").config();

const PORT = process.env.PORT || 8080;

const app = express();

app.use(cors());
app.use(express.json());
app.use("/api", columnRouter);

app.listen(PORT, () => console.log(`server started on post ${PORT}`));

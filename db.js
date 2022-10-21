const Pool = require("pg").Pool;
const options = require("./utils/constants");

const pool = new Pool(options);

pool.on("connect", () => {
    console.log("Database connected successfully!");
});

module.exports = pool;

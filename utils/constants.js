require("dotenv").config();

const postgressOption = {
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE,
};

module.exports = postgressOption;

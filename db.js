const Pool = require("pg").Pool;
const options = require("./utils/constants");

const herokuOptions = {
    connectionString:
        "postgres://rfaxkorcnzfkmx:f8da7956a6a5fc97d9cdbc7f1719bd951a15421f1fd25b8cb7870ac3a5bda9cb@ec2-54-147-36-107.compute-1.amazonaws.com:5432/d9v3bk99vn40l3",
    ssl: {
        rejectUnauthorized: false,
    },
};

const pool = new Pool(herokuOptions);

module.exports = pool;

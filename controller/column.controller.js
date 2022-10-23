const db = require("../db");

class ColumnController {
    async createColumn(req, res) {
        const { date, name, count, distance } = req.body;
        const query = `INSERT INTO column_data (date_creation, name_column, count, distance) values ($1, $2, $3, $4) RETURNING *`;

        const { rows } = await db.query(query, [date, name, count, distance]);

        res.json({
            columns: rows[0],
            message: `Колонка была успешно создана`,
        });
    }

    async getColumns(req, res) {
        const { page, size } = req.query;
        const query = `SELECT * FROM column_data ORDER BY column_data DESC."id" LIMIT $2 OFFSET (($1 - 1) * $2);`;

        const data = await db.query(query, [page, size]);
        const count = await db.query(`SELECT  count (*) from column_data`);

        res.json({
            columns: data.rows,
            offset: parseInt(page),
            limit: parseInt(size),
            totalCount: parseInt(count.rows[0].count),
            message: "ok",
        });
    }

    async getOneColumn(req, res) {
        const { id } = req.params;
        const query = `SELECT * FROM column_data where id = $1`;

        const { rows } = await db.query(query, [id]);

        res.json({
            columns: rows[0],
            message: "ok",
        });
    }

    async updateColumn(req, res) {
        const { id } = req.params;
        const { date, name, count, distance } = req.body;
        const query = `UPDATE column_data set date_creation = $1, name_column = $2, count = $3, distance = $4 where id = $4 RETURNING *`;

        const { rows } = await db.query(query, [
            date,
            name,
            count,
            distance,
            id,
        ]);

        res.json({
            columns: rows[0],
            message: `Колонка под id=${id} успешно обновлена`,
        });
    }

    async deleteColumn(req, res) {
        const { id } = req.params;
        const query = `DELETE FROM column_data where id = $1`;

        const data = await db.query(query, [id]);
        res.json({
            columns: null,
            message: "Успешно удалено",
        });
    }
}

module.exports = new ColumnController();

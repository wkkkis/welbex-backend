const Router = require("express");
const columnController = require("../controller/column.controller");
const router = new Router();

router.post("/column", columnController.createColumn);
router.get("/column", columnController.getColumns);
router.get("/column/search", columnController.getColumns);
router.get("/column/:id", columnController.getOneColumn);
router.put("/column/:id", columnController.updateColumn);
router.delete("/column/:id", columnController.deleteColumn);

module.exports = router;

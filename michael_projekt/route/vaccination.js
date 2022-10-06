/**
 * Route for eshop.
 */
"use strict";

const express    = require("express");
const router     = express.Router();
const bodyParser = require("body-parser");
const urlencodedParser = bodyParser.urlencoded({ extended: false });
const eshop       = require("../src/vaccination.js");
const sitename   = "| Vaccination";

module.exports = router;

router.get("/index", (req, res) => {
    let data = {
        title: `Welcome ${sitename}`
    };

    res.render("vaccination/index", data);
});

router.get("/booking", async (req, res) => {
    let data = {
        title: `Shows all Costumers ${sitename}`
    };

    res.render("vaccination/booking", data);
});

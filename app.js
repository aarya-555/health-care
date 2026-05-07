const express = require("express");
const cors = require("cors");
require("dotenv").config();

const db = require("./database/db");
const authRoutes = require("./routes/authRoutes");
const prescriptionRoutes = require("./routes/prescriptionRoutes");

const app = express();

app.use(cors());
app.use(express.json());

app.use("/api/auth", authRoutes);
app.use("/api/prescriptions", prescriptionRoutes);

app.get("/", (req, res) => {
    res.send("HealthTech Prescription System API Running");
});

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
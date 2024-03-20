//conexion de BD
const {Pool}= require ("pg");
const pool= new Pool ({
user: "postgres", 
host: "localhost",
database: "Bike_Store",
password: "admin",
port: 5432,
});

module.exports = {
    pool,
}
const fs = require ("fs");
const path = require ("path");

const {pool}= require ("../config/db");

async function getAllUsers() {
    try {
        console.log('Obteniendo todos los clientes...');
        const client = await pool.connect();
        const result = await client.query('SELECT * FROM clientes');
        client.release();
        console.log('clientes obtenidos con éxito:', result.rows);
        return result.rows;
    } catch (error) {
        console.error('Error al obtener clientes:', error);
        throw error;
    }
}

async function insertUser(nombre, correo, contraseña) {
    try {
        console.log('Insertando nuevo cliente...');
        const client = await pool.connect();
        const queryText = 'INSERT INTO clientes (nombre, correo, contraseña) VALUES ($1, $2, $3) RETURNING *';
        const values = [nombre,correo, contraseña];
        const result = await client.query(queryText, values);
        client.release();
        console.log('Usuario insertado con éxito:', result.rows[0]);
        return result.rows[0]; // Devuelve el usuario insertado
    } catch (error) {
        console.error('Error al insertar cliente:', error);
        throw error;
    }
}

module.exports = {
    getAllUsers, insertUser
};




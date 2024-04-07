const { pool } = require("../config/db");

async function registrousu(nombre, apellido, correo, contraseña, id_rol) {
    try {
        // Conexión a la base de datos
        console.log("Insertando nuevo usuario...");
        const usuario = await pool.connect(); // Se abre una conexión con el pool

        // Consulta SQL para insertar un nuevo usuario en la tabla 'usuarios'
        const queryText = `
            INSERT INTO usuarios (nombre, apellido, correo, contraseña, id_rol)
            VALUES ($1, $2, $3, $4, $5)
        `;
        // Valores que se insertarán en la consulta SQL
        const values = [nombre, apellido, correo, contraseña, id_rol];

        // Ejecución de la consulta SQL
        await usuario.query(queryText, values); // Se ejecuta la consulta con los valores proporcionados

        // Se libera la conexión de la pool
        usuario.release();

        // Mensaje de éxito
        console.log("Usuario insertado con éxito");
        return { mensaje: 'Usuario insertado con éxito' }; // Se devuelve un mensaje de éxito
    } catch (error) {
        // Manejo de errores
        console.error("Error al insertar usuario:", error);
        throw error; // Se lanza el error para que pueda ser manejado en la aplicación o visto en la consola
    }
}
async function insertarDatosFormulario(nombre, direccion, telefono, monto) {
    try {
        console.log('Insertando datos del formulario...');
        const client = await pool.connect();
        const queryText = 'INSERT INTO Pago (nombre, direccion, telefono, monto) VALUES ($1, $2, $3, $4)';
        const values = [nombre, direccion, telefono, monto];
        await client.query(queryText, values);
        client.release();
        console.log('Datos del formulario insertados correctamente');
    } catch (error) {
        console.error('Error al insertar datos del formulario:', error);
        throw error;
    }
}

async function insertarContacto(nombre, email, mensaje) {
    try {
        console.log('Insertando nuevo contacto...');
        const client = await pool.connect();
        const queryText = 'INSERT INTO contactos (nombre, email, mensaje) VALUES ($1, $2, $3) RETURNING *';
        const values = [nombre, email, mensaje];
        const result = await client.query(queryText, values);
        client.release();
        console.log('Contacto insertado con éxito:', result.rows[0]);
        return result.rows[0]; // Devuelve el contacto insertado
    } catch (error) {
        console.error('Error al insertar contacto:', error);
        throw error;
    }
}

module.exports = { registrousu, insertarDatosFormulario, insertarContacto };
const { pool } = require("../config/db");

async function getAllUsers() {
    try {
        console.log('Obteniendo todos los clientes...');
        const client = await pool.connect();
        const result = await client.query('SELECT * FROM usuarios');
        client.release();
        console.log('clientes obtenidos con éxito:', result.rows);
        return result.rows;
    } catch (error) {
        console.error('Error al obtener clientes:', error);
        throw error;
    }
}

async function insertUser(nombre, correo, contraseña, id_rol) {
    try {
        console.log('Insertando nuevo cliente...');
        const client = await pool.connect();
        const queryText = 'INSERT INTO usuarios (nombre, correo, contraseña, id_rol) VALUES  ($1, $2, $3, $4) RETURNING *';
        const values = [nombre, correo, contraseña, id_rol];
        const result = await client.query(queryText, values);
        client.release();
        console.log('Usuario insertado con éxito:', result.rows[0]);
        return result.rows[0]; // Devuelve el usuario insertado
    } catch (error) {
        console.error('Error al insertar cliente:', error);
        throw error;
    }
}

async function loginUser(email, password) {
    try {
        console.log('Intentando iniciar sesión para el usuario con correo:', email);
        const client = await pool.connect();
        const queryText = 'SELECT * FROM usuarios WHERE correo = $1 AND contraseña = $2';
        const values = [email, password];
        const result = await client.query(queryText, values);
        client.release();
        if (result.rows.length > 0) {
            console.log('Inicio de sesión exitoso para el usuario con correo:', email);
            return { success: true, message: 'Inicio de sesión exitoso', user:result.rows[0] };
        } else {
            console.log('Correo o contraseña incorrectos:', email);
            return { success: false, message: 'Correo o contraseña incorrectos' };
        }
    } catch (error) {
        console.error('Error al iniciar sesión:', error);
        throw error;
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

async function getAllProducts() {
    try {
        console.log('Obteniendo todos los productos...');
        const client = await pool.connect();
        const result = await client.query('SELECT articulos.nombre, articulos.costo, articulos.margen, articulos.impuesto, articulos.stock, articulos.marca, articulos.descripcion AS articulo_descripcion, articulos.especificaciones, articulos.cantidad, articulos.id_articulo, articulos.id_categoria, articulos.imagen, categorias.descripcion AS categoria_descripcion FROM articulos INNER JOIN categorias ON articulos.id_categoria = categorias.id_categoria; ');
        client.release();
        console.log('Productos obtenidos con éxito:', result.rows);
        return result.rows;
    } catch (error) {
        console.error('Error al obtener productos:', error);
        throw error;
    }
}

async function getProductsByCategory() {
    try {
        console.log('Obteniendo todos los productos...');
        const client = await pool.connect();
        const result = await client.query('SELECT articulos.nombre, articulos.costo, articulos.margen, articulos.impuesto, articulos.stock, articulos.marca, articulos.descripcion AS articulo_descripcion, articulos.especificaciones, articulos.cantidad, articulos.id_articulo, articulos.id_categoria, articulos.imagen, categorias.descripcion AS categoria_descripcion FROM articulos INNER JOIN categorias ON articulos.id_categoria = categorias.id_categoria WHERE articulos.id_categoria=6; ');
        client.release();
        console.log('Productos obtenidos con éxito:', result.rows);
        return result.rows;
    } catch (error) {
        console.error('Error al obtener productos:', error);
        throw error;
    }
}

async function getProductsBicicleta() {
    try {
        console.log('Obteniendo todos los productos...');
        const client = await pool.connect();
        const result = await client.query('SELECT articulos.nombre, articulos.costo, articulos.margen, articulos.impuesto, articulos.stock, articulos.marca, articulos.descripcion AS articulo_descripcion, articulos.especificaciones, articulos.cantidad, articulos.id_articulo, articulos.id_categoria, articulos.imagen, categorias.descripcion AS categoria_descripcion FROM articulos INNER JOIN categorias ON articulos.id_categoria = categorias.id_categoria WHERE articulos.id_categoria BETWEEN 1 AND 3; ');
        client.release();
        console.log('Productos obtenidos con éxito:', result.rows);
        return result.rows;
    } catch (error) {
        console.error('Error al obtener productos:', error);
        throw error;
    }
}

async function getProductsAccesorios() {
    try {
        console.log('Obteniendo todos los productos de Accesorios...');
        const client = await pool.connect();
        const result = await client.query('SELECT articulos.nombre, articulos.costo, articulos.margen, articulos.impuesto, articulos.stock, articulos.marca, articulos.descripcion AS articulo_descripcion, articulos.especificaciones, articulos.cantidad, articulos.id_articulo, articulos.id_categoria, articulos.imagen, categorias.descripcion AS categoria_descripcion FROM articulos INNER JOIN categorias ON articulos.id_categoria = categorias.id_categoria WHERE articulos.id_categoria BETWEEN 4 AND 5; ');
        client.release();
        console.log('Productos obtenidos con éxito:', result.rows);
        return result.rows;
    } catch (error) {
        console.error('Error al obtener productos:', error);
        throw error;
    }
}

async function getProductById(id) {
    try {
        console.log('Obteniendo producto por ID...');
        const client = await pool.connect();
        const queryText = `SELECT articulos.nombre, articulos.costo, articulos.margen, articulos.impuesto, articulos.stock, articulos.marca, articulos.descripcion AS articulo_descripcion, 
        articulos.especificaciones, articulos.cantidad, articulos.id_articulo, articulos.id_categoria, articulos.imagen, categorias.descripcion AS categoria_descripcion 
        FROM articulos INNER JOIN categorias ON articulos.id_categoria = categorias.id_categoria WHERE articulos.id_articulo = $1`;
        const result = await client.query(queryText, [id]);
        client.release();
        console.log('Producto obtenido por ID:', result.rows[0]);
        return result.rows[0]; 
    } catch (error) {
        console.error('Error al obtener producto por ID:', error);
        throw error;
    }
}
async function addProductCarrito(idUser, idProduct){
    try{
        const client = await pool.connect();
        await client.query('BEGIN');
        const insertQuery = 'INSERT INTO carrito(user_id, product_id) VALUES($1, $2)';
        await client.query(insertQuery, [idUser, idProduct]);
        const queryCarrito = 'SELECT p.* FROM articulos p INNER JOIN carrito c ON p.id_articulo = c.product_id WHERE c.user_id = $1'
        const resultCarrito = await client.query(queryCarrito,[idUser])
        await client.query('COMMIT');
        client.release();
        return resultCarrito.rows
    }
    catch(error){
        console.error('Error al obtener producto por ID:', error);
        throw error;
    }
}
async function getProductCarrito(idUser){
    try{
        const client = await pool.connect();
        const queryCarrito = 'SELECT p.* FROM articulos p INNER JOIN carrito c ON p.id_articulo = c.product_id WHERE c.user_id = $1'
        const resultCarrito = await client.query(queryCarrito,[idUser])
        client.release();
        return resultCarrito.rows
    }
    catch(error){
        console.error('Error al obtener producto por ID:', error);
        throw error;
    }
}

module.exports = {addProductCarrito, getProductCarrito, loginUser, getAllUsers, insertUser, insertarDatosFormulario, insertarContacto, getAllProducts, getProductsByCategory, getProductsBicicleta, getProductsAccesorios, getProductById};
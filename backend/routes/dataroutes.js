
const express = require ('express');
const router = express.Router ();
const datacontroler = require ('../controllers/datacontroler');

const { insertarDatosFormulario } = require('../controllers/datacontroler');



router.get('/clientes', async (req, res) => {
    try {
        console.log('Recibida solicitud para obtener todos los clientes...'); //solicitar
        const users = await datacontroler.getAllUsers();
        console.log('clientes enviados:', users);
        res.json(users);
    } catch (error) {
        console.error('Error al obtener clientes:', error);
        res.status(500).json({ error: 'Error al obtener clientes' });
    }
});

router.post('/clientes', async (req, res) => {
    const { nombre,correo, contraseña } = req.body;
    try {
        console.log('Recibida solicitud para agregar un nuevo clientes:', req.body);
        const newUser = await datacontroler.insertUser(nombre, correo, contraseña); //agregar
        console.log('clientes insertado:', newUser);
        res.status(201).json(newUser);
    } catch (error) {
        console.error('Error al agregar clientes:', error);
        res.status(500).json({ error: 'Error al agregar clientes' });
    }
});



// Maneja la solicitud POST del formulario contraentrega
router.post('/procesar-pago-contraentrega', async (req, res) => {
    const { nombre, direccion, telefono, monto } = req.body;
    try {
        await datacontroler.insertarDatosFormulario(nombre, direccion, telefono, monto); // Corrige esta línea
        res.status(201).send('Datos del formulario registrados correctamente'); // Corrige esta línea
    } catch (error) {
        console.error('Error al procesar el pedido:', error);
        res.status(500).send('Error interno del servidor');
    }
});



// Ruta para procesar el formulario de contacto
router.post('/contacto', async (req, res) => {
    const { nombre, email, mensaje } = req.body;
    try {
        console.log('Recibida solicitud para procesar el formulario de contacto:', req.body);
        // Llama a la función en el controlador para insertar el contacto en la base de datos
        await datacontroler.insertarContacto(nombre, email, mensaje); // Utiliza la función insertarContacto del controlador
        res.status(201).send('Formulario de contacto procesado correctamente');
    } catch (error) {
        console.error('Error al procesar formulario de contacto:', error);
        res.status(500).send('Error interno del servidor');
    }
});

module.exports = router;

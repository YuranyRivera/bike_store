
const express = require ('express');
const router = express.Router ();
const datacontroler = require ('../controllers/datacontroler');

const { insertarDatosFormulario } = require('../controllers/datacontroler');

router.post('/usuarios', async (req, res) => {
    const { nombre, apellido, correo, contraseña } = req.body; // Suponiendo que los datos se envían en el cuerpo de la solicitud

    try {
        const nuevoUsuario = await datacontroler.registrousu (nombre, apellido, correo, contraseña);
        if (nuevoUsuario) {
            res.status(201).json({ mensaje: 'Usuario creado correctamente', usuario: nuevoUsuario });
        } else {
            res.status(500).json({ mensaje: 'Error al crear usuario' });
        }
    } catch (error) {
        console.error('Error al crear usuario:', error);
        res.status(500).json({ mensaje: 'Error interno del servidor' });
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

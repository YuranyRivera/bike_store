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

router.get('/products', async (req, res) => {
    try {
        console.log('Recibida solicitud para obtener todos los productos...',req.body);
        const products = await datacontroler.getAllProducts();
        console.log('Productos enviados:', products);
        res.json(products);
    } catch (error) {
        console.error('Error al obtener productos:', error);
        res.status(500).json({ error: 'Error al obtener productos' });
    }
});

router.get('/vestuario_hombre', async (req, res) => {
    try {
        console.log('Recibida solicitud para obtener productos de la categoría "vestuario_hombre"...');
        const products = await datacontroler.getProductsByCategory('vestuario_hombre');
        console.log('Productos de la categoría "vestuario_hombre" enviados:', products);
        res.json(products);
    } catch (error) {
        console.error('Error al obtener productos de la categoría "vestuario_hombre":', error);
        res.status(500).json({ error: 'Error al obtener productos de la categoría "vestuario_hombre"' });
    }
});

router.get('/Bicicletas', async (req, res) => {
    try {
        console.log('Recibida solicitud para obtener todos los productos...',req.body);
        const products = await datacontroler.getProductsBicicleta();
        console.log('Productos enviados:', products);
        res.json(products);
    } catch (error) {
        console.error('Error al obtener productos:', error);
        res.status(500).json({ error: 'Error al obtener productos' });
    }
});



router.delete('/usuarios/:id_usuario', async (req, res) => {
    const { id_usuario } = req.params; // Se obtiene el id_usuario de los parámetros de la URL

    try {
        const resultado = await datacontroler.eliminarUsuario(id_usuario);
        res.status(200).json(resultado); // Se devuelve el resultado de la operación de eliminación
    } catch (error) {
        console.error('Error al eliminar usuario:', error);
        res.status(500).json({ mensaje: 'Error interno del servidogggr' });
    }
});

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



router.get('/Accesorios', async (req, res) => {
    try {
        console.log('Recibida solicitud para obtener todos los productos...',req.body);
        const products = await datacontroler.getProductsAccesorios();
        console.log('Productos enviados:', products);
        res.json(products);
    } catch (error) {
        console.error('Error al obtener productos:', error);
        res.status(500).json({ error: 'Error al obtener productos' });
    }
});


module.exports = router;
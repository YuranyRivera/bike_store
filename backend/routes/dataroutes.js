
const express = require ('express');
const router = express.Router ();
const datacontroler = require ('../controllers/datacontroler');

const { insertarDatosFormulario } = require('../controllers/datacontroler');



router.get('/registro', async (req, res) => {
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

router.post('/registro', async (req, res) => {
    const { nombre, correo, contraseña, id_rol } = req.body; // Aquí recibimos id_rol del cuerpo de la solicitud
    try {
        console.log('Recibida solicitud para agregar un nuevo cliente:', req.body);
        const newUser = await datacontroler.insertUser(nombre, correo, contraseña, id_rol); // Pasamos id_rol al insertar el usuario
        console.log('Cliente insertado:', newUser);
        res.status(201).json(newUser);
    } catch (error) {
        console.error('Error al agregar cliente:', error);
        res.status(500).json({ error: 'Error al agregar cliente' });
    }
});



// Ruta para iniciar sesión
router.post('/login', async (req, res) => {
    const { email, password } = req.body;
    try {
        const result = await datacontroler.loginUser(email, password);
    //    res.status(200).json(result)
    if (result.success) {
        res.status(200).json({ message: result.message, user: result.user });
    } 
    else {
        res.status(401).json({ message: result.message });
    }
    } catch (error) {
        console.error('Error al iniciar sesión:', error);
        res.status(500).json({ error: 'Error interno del servidor' });
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

router.get('/productos/:id', async (req, res) => {
    const { id } = req.params;
    try {
        console.log(`Recibida solicitud para obtener producto con ID ${id}`);
        const product = await datacontroler.getProductById(id);
        console.log('Producto enviado:', product);
        res.json(product);
    } catch (error) {
        console.error(`Error al obtener producto con ID ${id}:`, error);
        res.status(500).json({ error: `Error al obtener producto con ID ${id}` });
    }
});

router.post('/carrito', async(req, res)=>{
    const {idUser, idProduct} = req.body;
    try{
        const carrito = await datacontroler.addProductCarrito(idUser, idProduct)
        res.json(carrito);
    }
    catch(error){
        res.status(500).json({message: error.message})
    }
})

router.get('/carrito/:idUser', async(req, res)=>{
    const {idUser} = req.params;
    try{
        const carrito = await datacontroler.getProductCarrito(idUser)
        res.status(200).json(carrito)
    }
    catch(error){
        res.status(500).json({message: error.message})
    }
})
module.exports = router;

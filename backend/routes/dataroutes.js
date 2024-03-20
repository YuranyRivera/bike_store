const express = require ('express');

const router = express.Router ();

const datacontroler = require ('../controllers/datacontroler');

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



module.exports = router;
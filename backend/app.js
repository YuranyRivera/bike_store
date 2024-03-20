// backend/app.js
const cors = require('cors'); //no salte error
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000; //asignacion puerto-libre.

// Middleware para manejar solicitudes JSON y de URL codificadas
app.use(express.json());
app.use(express.urlencoded({ extended: true }));//leer rutas
app.use(cors());
// Rutas de la API
const dataRoutes = require('./routes/dataroutes');
app.use('/api', dataRoutes); // Prefijo de ruta para las rutas de datos

// Manejo de errores
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
});

// Iniciar el servidor
app.listen(PORT, () => {
  console.log(`Server is running on port http://localhost:${PORT}`);
});
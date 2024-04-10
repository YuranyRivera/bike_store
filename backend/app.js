const express = require('express');
const app = express();
const cors = require('cors');
const PORT = 4000;

// Middleware para manejar solicitudes JSON y de URL codificadas
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

// Importar y usar las rutas de la API
const dataRoutes = require('./routes/dataroutes');
app.use('/api', dataRoutes);

// Otras configuraciones y rutas pueden ir aquí

// Manejo de errores
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');
});

// Iniciar el servidor
app.listen(PORT, () => {
  console.log(`Server is running on port http://localhost:${PORT}`);
});
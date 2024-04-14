import React, { useState } from 'react';
import axios from 'axios';

const FormularioPago = ({ usuario_id, carrito }) => {
    const [datosPago, setDatosPago] = useState({
        nombre: '',
        direccion: '',
        telefono: '',
    });

    const handleChange = (e) => {
        const { name, value } = e.target;
        setDatosPago({
            ...datosPago,
            [name]: value,
        });
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        
        try {
            // Envía los datos al backend para procesar
            const response = await axios.post('http://localhost:4000/api/pago-contraentrega', {
                ...datosPago,
                usuario_id,
                carrito,
            });

            if (response.data.success) {
                // Maneja el éxito (p. ej., muestra un mensaje de confirmación)
                console.log('Pago procesado con éxito');
            } else {
                // Maneja el error (p. ej., muestra un mensaje de error)
                console.error('Error al procesar el pago:', response.data.message);
            }
        } catch (error) {
            console.error('Error al enviar los datos de pago:', error);
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <div>
                <label>Nombre:</label>
                <input 
                    type="text" 
                    name="nombre" 
                    value={datosPago.nombre} 
                    onChange={handleChange} 
                />
            </div>
            <div>
                <label>Dirección:</label>
                <input 
                    type="text" 
                    name="direccion" 
                    value={datosPago.direccion} 
                    onChange={handleChange} 
                />
            </div>
            <div>
                <label>Teléfono:</label>
                <input 
                    type="text" 
                    name="telefono" 
                    value={datosPago.telefono} 
                    onChange={handleChange} 
                />
            </div>
            <button type="submit">Pagar</button>
        </form>
    );
};

export default FormularioPago;
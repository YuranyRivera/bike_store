import React, { useState } from 'react';
import axios from 'axios';
import '../FormularioPago/FormularioPago.css';

const backendURL = 'http://localhost:4000';

function Pago() {
    const [formData, setFormData] = useState({
        nombre: '',
        direccion: '',
        telefono: '',
        monto: ''
    });

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value
        });
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
    
        try {
            // Obtener el ID de usuario del almacenamiento local
            const userId = localStorage.getItem('userID');
    
            // Verificar si se ha iniciado sesión
            if (!userId) {
                console.error('El usuario no ha iniciado sesión');
                return;
            }
    
            const payload = { ...formData, usuario_id: userId };
    
            const response = await axios.post(`${backendURL}/api/procesar-pago-contraentrega`, payload);
            
            if (response.data.success) {
                console.log('Pago procesado con éxito');
            } else {
                console.error('Error al procesar el pago:', response.data.message);
            }
        } catch (error) {
            // Imprimir el error completo para depuración
            console.error('Error completo:', error);
        }
    };
    return (
        <div className="formu">
            <h1>Formulario de Pago Contraentrega</h1>
            <form onSubmit={handleSubmit}>
                <div className="form-group">
                    <label className="textoo" htmlFor="nombre">Nombre Completo:</label>
                    <input 
                        className="mensaje" 
                        type="text" 
                        id="nombre" 
                        name="nombre" 
                        value={formData.nombre} 
                        onChange={handleChange} 
                        required 
                    />
                </div>

                <div className="form-group">
                    <label className="textoo" htmlFor="direccion">Dirección de Envío:</label>
                    <input 
                        className="mensaje" 
                        type="text" 
                        id="direccion" 
                        name="direccion" 
                        value={formData.direccion} 
                        onChange={handleChange} 
                        required 
                    />
                </div>

                <div className="form-group">
                    <label className="textoo" htmlFor="telefono">Teléfono de Contacto:</label>
                    <input 
                        className="mensaje" 
                        type="tel" 
                        id="telefono" 
                        name="telefono" 
                        value={formData.telefono} 
                        onChange={handleChange} 
                        required 
                    />
                </div>

                <div className="form-group">
                    <label className="textoo" htmlFor="monto">Monto a Pagar:</label>
                    <input 
                        className="mensaje" 
                        type="number" 
                        id="monto" 
                        name="monto" 
                        value={formData.monto} 
                        onChange={handleChange} 
                        required 
                    />
                </div>

                <button className="btn_Pedido" type="submit">Realizar Pedido</button>
            </form>
        </div>
    );
}

export default Pago;
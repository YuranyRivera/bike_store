import React from 'react';
import "../Contactanos/Contactanos.css"
const backendURL = "http://localhost:4000";

function Contactanos() {
    
    return (
        <div className="container">
    <div className="formulario">
        <h1>¿Tienes alguna inquietud?</h1>
        <br />
        <p>Comunícala ya con nosotros o contacta con los correos oficiales de la página, ¡te responderemos!</p>
        <br />
        <form action={`${backendURL}/api/contacto`} method="post">
            <label htmlFor="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required />

            <label htmlFor="email">Correo Electrónico:</label>
            <input type="email" id="email" name="email" required />

            <label htmlFor="mensaje">Mensaje:</label>
            <textarea id="mensaje" name="mensaje" rows="4" required></textarea>

            <button type="submit">Enviar</button>
        </form>
    </div>
</div>

    );
}

export default Contactanos;
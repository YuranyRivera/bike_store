import React from 'react';
import "../Contactanos/Contactanos.css"
const backendURL = "http://localhost:4000";

function Contactanos() {
    
    return (
        <div className="container1">
    <div className="formulario1">
        <h1 className='pal'>¿Tienes alguna inquietud?</h1>
        <br />
        <p className='palab'>Comunícala ya con nosotros o contacta con los correos oficiales de la página, ¡te responderemos!</p>
        <br />
        <form action={`${backendURL}/api/contacto`} method="post">
            <label htmlFor="nombre">Nombre:</label>
            <input className='cont' type="text" id="nombre" name="nombre" required />

            <label htmlFor="email">Correo Electrónico:</label>
            <input className='cont' type="email" id="email" name="email" required />

            <label htmlFor="mensaje">Mensaje:</label>
            <textarea id="mensaje" name="mensaje" rows="4" required></textarea>

            <button className='enviar' type="submit">Enviar</button>
        </form>
    </div>
</div>

    );
}

export default Contactanos;
import '../Usuario/Usuario.css';
import React from 'react';

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'; 
import { faArrowRightFromBracket } from '@fortawesome/free-solid-svg-icons';

function LogoutModal({ onLogout, onCancel }) {
    const handleLogout = async () => {
        try {
            // Enviamos una solicitud al backend para cerrar sesión
            const response = await fetch('/api/logout', {
                method: 'POST',
                credentials: 'include' // Incluye las cookies en la solicitud
            });

            if (response.ok) {
                // Llamamos a la función onLogout cuando la sesión se cierra con éxito
                onLogout();
            } else {
                console.error('Error al cerrar sesión:', response.statusText);
            }
        } catch (error) {
            console.error('Error al cerrar sesión:', error);
        }
    };

    return (
        <div className="logout-modal">
            <p>¿Estás seguro de que deseas cerrar sesión?</p>
            <FontAwesomeIcon icon={faArrowRightFromBracket} /> <button className='cerrar'  onClick={handleLogout}>Cerrar sesión</button>
            <button className='cancelar' onClick={onCancel}>Cancelar</button>
        </div>
    );
}

export default LogoutModal;
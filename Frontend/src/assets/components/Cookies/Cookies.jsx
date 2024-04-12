import React, { useState, useEffect } from 'react';
import '../Cookies/Cookies.css'; 
import img from "../../../IMG/cookie.jpg";

function App() {
  const [showCookie, setShowCookie] = useState(true); // Definimos el estado showCookie

  useEffect(() => {
    const cookieAccepted = document.cookie.includes('cookieBy=CodinNepal');
    const cookieBox = document.querySelector('.wrapper');

    if (cookieAccepted) {
      cookieBox.classList.add('hide');
    } else {
      cookieBox.classList.remove('hide');
    }
  }, []);

  const acceptCookie = () => {
    document.cookie = 'cookieBy=CodinNepal; max-age=2592000'; // Establece la cookie para un mes (30 días)
    const cookieBox = document.querySelector('.wrapper');
    cookieBox.classList.add('hide');
    setShowCookie(false); // Actualizamos el estado para ocultar el aviso de cookies
  };

  return (
    <div className="wrapper">
      {showCookie && (
        <div className="cookie-container">
          <img className="imgCookie" src={img} alt="Cookie" /> {/* Añadimos el atributo alt para accesibilidad */}
          <div className="contect">
            <header className="headercokie">Acepta términos de cookies</header>
            <p className="msjcokie">Las cookies y tecnologías similares que se usan con fines de personalización mejoran tu experiencia proporcionándote contenido y funciones personalizados, dependiendo de tu configuración...</p>
            <div className="buttons">
              <button className="item" onClick={acceptCookie}>Aceptar</button>
              <a href="https://terminosycondiciones.es/politica-de-cookies/" className="item">Leer términos</a>
            </div>
          </div>
        </div>
      )}
      
    </div>
  );
}

export default App;

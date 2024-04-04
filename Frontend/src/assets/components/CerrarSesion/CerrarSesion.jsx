import React, { useEffect } from 'react';
import '../CerrarSesion/CerrarSesion.css'
import img from "../../../IMG/iconusuario.png"
function MenuDesplegable() {
  useEffect(() => {
    let cerrar_btn = document.getElementById('hideText_btn');
    let items = document.getElementById('hideText');

    const toggleText = () => {
      items.classList.toggle('show');
    };

    cerrar_btn.addEventListener('click', toggleText);

    return () => {
      cerrar_btn.removeEventListener('click', toggleText);
    };
  }, []);

  return (
    <html lang="es">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="/css/cerrarSeion.css" />
        <title>Menú Desplegable</title>
      </head>
      <body>
        <div className="containerCerrar">
          <img src= {img} className='igmPerfil' id="hideText_btn"/>
          <span className="hide" id="hideText">
            <li className="lista"><a className="nada" href="">Perfil</a></li>
            <li className="lista"><a className="nada" href="">Salir</a></li>
          </span>
        </div>
        <script src="/js/funcionSerrarCesion.js"></script>
      </body>
    </html>
  );
}

export default MenuDesplegable;

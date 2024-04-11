import React, { useEffect } from 'react';
import '../CerrarSesion/CerrarSesion.css'
import img from "../../../IMG/iconusuario.png"
import Img from "../../../IMG/ico_.png"
import IMG from "../../../IMG/ico_cerrar.png"


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
          <li className="iten"><img src= {Img} className='igmPer'/></li>
            <li className="iten1">Perfil</li>
            <li className="iten2"><a className='CerrarColor' href=""><img src={IMG} className='imgSalir'/>Cerrar sesion</a></li>
          </span>
        </div>
        <script src="/js/funcionSerrarCesion.js"></script>
      </body>
    </html>
  );
}

export default MenuDesplegable;

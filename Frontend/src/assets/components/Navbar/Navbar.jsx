import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import './Navbar.css';
import logoBike from '../../img/logobikestore.png';
import carrito from '../../img/carrito.png';
import usuario from '../../img/iconusuario.png';

function Navbar() {
  const [menuVisible, setMenuVisible] = useState(false);

  const toggleMenu = () => {
    setMenuVisible(!menuVisible);
    document.body.style.overflow = menuVisible ? 'auto' : 'hidden';
  };

  return (
    <>
      <section className="contenido">
        <header className="header">
        <Link to="/">
        <img src={logoBike} alt="Logo" className="logo" />
         </Link>
          <div className="container">
            <div className="btn">
              <input className='input' type="text" placeholder="Buscar" />
              <i className="fa fa-search"></i>
            </div>
          </div>
          <Link to="/carrito"> {/* Utiliza Link en lugar de a para navegar a la página del carrito */}
            <img src={carrito} alt="carrito" className="logo1" />
          </Link>
          <Link to="/Registro"> {/* Utiliza Link en lugar de a para navegar a la página de usuario */}
            <img src={usuario} alt="usuario" className="logo1" />
          </Link>
        </header>
      </section>

      <header className="header2">
        <button id="abrir" className="abrir-menu" onClick={toggleMenu}>
          <i className="bi bi-list"></i>
        </button>
        <nav className={`nav ${menuVisible ? 'visible' : ''}`} id="nav">
          <button className="cerrar-menu" id="cerrar" onClick={toggleMenu}>
            <i className="bi bi-x"></i>
          </button>
          <ul className="nav-list">
            <li><Link to="/prueba">HOME</Link></li> {/* 2. Reemplaza <a> por <Link> */}
            <li><Link to="/bicicletas">BICICLETAS</Link></li> {/* Enlace a BICICLETAS */}
            <li><Link to="/accesorio">ACCESORIOS</Link></li>
            <li><Link to="/vestuario">VESTUARIO</Link></li>
            <li><Link to="/Contactanos">CONTACTANOS</Link></li>
           
          </ul>
        </nav>
      </header>
      </>
  );
}

export default Navbar;
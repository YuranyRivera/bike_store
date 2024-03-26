import React, { useState } from 'react';
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
    <main>
      <section className="contenido">
        <header className="header">
          <img src={logoBike} alt="Logo" className="logo" />
          <div className="container">
            <div className="btn">
              <input className='input' type="text" placeholder="Buscar" />
              <i className="fa fa-search"></i>
            </div>
          </div>
          <a href="/HTML/carrito.html">
            <img src={carrito} alt="carrito" className="logo1" />
          </a>
          <a href="">
            <img src={usuario} alt="usuario" className="logo1" />
          </a>
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
            <li><a href="#">HOME</a></li>
            <li><a href="/HTML/bicicletas.html">BICICLETAS</a></li>
            <li><a href="/HTML/accesorio.html">ACCESORIOS</a></li>
            <li><a href="/HTML/vestuario.html">VESTUARIO</a></li>
            <li><a href="#">DESCUENTO</a></li>
            <li><a href="/HTML/contactanos.html">CONTACTANOS</a></li>
          </ul>
        </nav>
      </header>
    </main>
  );
}

export default Navbar;
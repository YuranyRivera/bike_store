// Navbar.js
import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import './Navbar.css';
import logoBike from '../../img/logobikestore.png';
import usuario from '../../img/iconusuario.png';
import Carrito from '../Carrito/Carrito';

function Navbar() {
    const [menuVisible, setMenuVisible] = useState(false);
    const [carritoVisible, setCarritoVisible] = useState(false);
    const [carritoItems, setCarritoItems] = useState([]);

    const toggleMenu = () => {
        setMenuVisible(!menuVisible);
        document.body.style.overflow = menuVisible ? 'auto' : 'hidden';
    };

    const toggleCarrito = () => {
        setCarritoVisible(!carritoVisible);
    };

    const addToCart = (producto) => {
        setCarritoItems([...carritoItems, producto]);
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
                    <button className="carro" onClick={toggleCarrito}>
                        <span className="img_carro"></span>
                    </button>
                    <Link to="/Registro">
                        <img src={usuario} alt="usuario" className="logo1" />
                    </Link>
                </header>
            </section>

            {carritoVisible && <Carrito allProducts={carritoItems} />} {/* Mostrar carrito con los productos */}

            <header className="header2">
                <button id="abrir" className="abrir-menu" onClick={toggleMenu}>
                    <i className="bi bi-list"></i>
                </button>
                <nav className={`nav ${menuVisible ? 'visible' : ''}`} id="nav">
                    <button className="cerrar-menu" id="cerrar" onClick={toggleMenu}>
                        <i className="bi bi-x"></i>
                    </button>
                    <ul className="nav-list">
                        <li><Link to="/prueba">HOME</Link></li>
                        <li><Link to="/bicicletas">BICICLETAS</Link></li>
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
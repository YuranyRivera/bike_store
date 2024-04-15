import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import './Navbar.css';
import logoBike from '../../img/logobikestore.png';
import Carrito from '../Carrito/Carrito';
import Usuario from '../Usuario/Usuario'; // Importa tu componente Usuario aquí
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'; 
import { faCartShopping, faUser } from '@fortawesome/free-solid-svg-icons';

function Navbar() {
    const [menuVisible, setMenuVisible] = useState(false);
    const [carritoVisible, setCarritoVisible] = useState(false);
    const [carritoItems, setCarritoItems] = useState([]);
    const [usuarioVisible, setUsuarioVisible] = useState(false); // Estado para el modal de Usuario

    const toggleMenu = () => {
        setMenuVisible(!menuVisible);
        document.body.style.overflow = menuVisible ? 'auto' : 'hidden';
    };

    const toggleCarrito = () => {
        setCarritoVisible(!carritoVisible);
    };

    const toggleUsuarioModal = () => {
        setUsuarioVisible(!usuarioVisible); // Cambia la visibilidad del modal de Usuario
    };

    const handleLogout = () => {
        localStorage.removeItem('userID'); // Eliminar el ID del usuario del almacenamiento local
        window.location.href = '/'; // Redirigir al usuario a la página de inicio
    };

    const addToCart = (producto) => {
        setCarritoItems([...carritoItems, { ...producto, quantity: 1 }]);
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
                        <FontAwesomeIcon icon={faCartShopping} style={{width: '30px', height: '30px', color: 'white'}} /> 
                    </button>
                    <button className="boton_usuario" onClick={toggleUsuarioModal}>
                        <FontAwesomeIcon icon={faUser} style={{width: '30px', height: '30px', color: 'white'}} />
                    </button>
                </header>
            </section>

            {carritoVisible && <Carrito allProducts={carritoItems} />} {/* Mostrar carrito con los productos */}
            {usuarioVisible && <Usuario handleLogout={handleLogout} />} {/* Pasar la función handleLogout al componente Usuario */}
            <header className="header2">
                <button id="abrir" className="abrir-menu" onClick={toggleMenu}>
                    <i className="bi bi-list"></i>
                </button>
                <nav className={`nav ${menuVisible ? 'visible' : ''}`} id="nav">
                    <button className="cerrar-menu" id="cerrar" onClick={toggleMenu}>
                        <i className="bi bi-x"></i>
                    </button>

                    <ul className="nav-list">
                        <li><Link to="/home">HOME</Link></li>
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
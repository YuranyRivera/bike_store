// Descripcion.js
import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import "../Descripcion/descripcion.css";
import Navbar from '../Navbar/Navbar';
import Footer from '../Footer/Footer';

function Descripcion({ productList, addToCart }) {
    const { id_articulo } = useParams();
    const [producto, setProducto] = useState(null);

    useEffect(() => {
        async function fetchProducto() {
            try {
                const response = await fetch(`http://localhost:4000/api/productos/${id_articulo}`);
                if (!response.ok) {
                    throw new Error('Error al obtener el producto');
                }
                const data = await response.json();
                setProducto(data);
            } catch (error) {
                console.error(error);
            }
        }

        fetchProducto();
    }, [id_articulo]);

    if (!producto) {
        return <div>Cargando...</div>;
    }

    const handleAddToCart = () => {
        addToCart(producto);
    };
    

    return (
        <>
            <Navbar/>
            <div className="rectangulo">
                <img className="imagen" src={`src/assets/img/BIKE_STORE/${producto.categoria_descripcion}/${producto.imagen}/Bici1.png`} alt={producto.nombre} />
                <div className="info">
                    <h2 className="titulo">{producto.nombre}</h2>
                    <h2 className="precio">${producto.costo}</h2>
                    <h2 className="M">Cantidad Disponible:{producto.stock}</h2>
                    <h2 className="M">Marca:{producto.marca}</h2>
                    <div className="cart">
                        <button type="button" className="button button-qty" data-quantity="minus">-</button>
                        <input className="number" type="number" value="1" min="1" max="999" />
                        <button type="button" className="button button-qty" data-quantity="plus">+</button>
                    </div>
                    
                    <button className="boton" type="button" onClick={handleAddToCart}>AÑADIR AL CARRITO</button>
                </div>
                <div className="descripcion-container">
      <h2>Productos Relacionados</h2>

    </div>
            </div>
            <div className="textos">
                <h2>Descripción</h2>
                <p className="descripcion">{producto.articulo_descripcion}</p>

                <h2>Especificaciones</h2>
                <li className="especificacion">{producto.especificaciones}</li>
            </div>
            <Footer/>
        </>
    );
}

export default Descripcion;
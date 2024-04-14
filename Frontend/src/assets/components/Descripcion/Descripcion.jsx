import React, { useState, useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import "../Descripcion/descripcion.css";
import Navbar from '../Navbar/Navbar';
import Footer from '../Footer/Footer';

function Descripcion({ productList, addToCart }) {
    const { id_articulo } = useParams();
    const [producto, setProducto] = useState(null);
    const [cantidades, setCantidades] = useState(1);

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

    useEffect(() => {
        if (producto) {
            const img = new Image();
            img.onload = () => {
                console.log('La imagen se cargó correctamente.');
            };
            img.onerror = () => {
                console.error('Error al cargar la imagen.');
            };
            img.src = `../../assets/img/BIKE_STORE/${producto.categoria_descripcion}/${producto.imagen}/Bici1.png`;
        }
    }, [producto]);

    if (!producto) {
        return <div>Cargando...</div>;
    }

    const handleAddToCart = () => {
        addToCart(producto, cantidades);
    };

    const handleQuantityChange = (action) => {
        console.log(`Stock disponible: ${producto.stock}`);
        console.log(`Cantidades actual: ${cantidades}`);
        
        if (action === 'minus' && cantidades > 1) {
            setCantidades(cantidades - 1);
        } else if (action === 'plus' && cantidades < producto.stock) {
            setCantidades(cantidades + 1);
        }

        console.log(`Nueva cantidades: ${cantidades}`);
    };

    return (
        <>
            <Navbar/>
            <div className="rectangulo">
                <img className="imagen" src={`src/assets/img/BIKE_STORE/${producto.categoria_descripcion}/${producto.imagen}/Bici1.png`} alt={producto.nombre} />
                <div className="info">
                    <h2 className="titulo">{producto.nombre}</h2>
                    <p className="precio">${producto.costo}</p>
                    <p className="M">Cantidades Disponibles: {producto.stock}</p>
                    <p className="M">Marca: {producto.marca}</p>
                    <div className="cart">
                        <button type="button" className="button button-qty" onClick={() => handleQuantityChange('minus')}>-</button>
                        <input className="number" type="number" value={cantidades} min="1" max={producto.stock} readOnly />
                        <button type="button" className="button button-qty" onClick={() => handleQuantityChange('plus')}>+</button>
                    </div>
                    
                    <button className="boton" type="button" onClick={handleAddToCart}>AÑADIR AL CARRITO</button>
                </div>
            </div>
            <div className="textos">
                <p className='Descripcion'> Descripción</p>
                <p className="descripcion">{producto.articulo_descripcion}</p>

                <p className='Descripcion'> Especificaciones</p>
                <li className="descripcion">{producto.especificaciones}</li>
            </div>
            <Footer/>
        </>
    );
}

export default Descripcion;
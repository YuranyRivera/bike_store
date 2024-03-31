import React, { useState } from 'react';
import carritoIcono from '../../img/carrito.png';
import '../Carrito/carrito.css';

function Carrito({ onAddProduct }) {
  const [mostrarCarrito, setMostrarCarrito] = useState(false);
  const [productosEnCarrito, setProductosEnCarrito] = useState([]);

  const toggleMostrarCarrito = () => {
    setMostrarCarrito(!mostrarCarrito);
  };

  const agregarProducto = (product) => {
    onAddProduct(product); // Llama a la función proporcionada por el componente padre
  };

  const eliminarProducto = (index) => {
    const nuevosProductos = [...productosEnCarrito];
    nuevosProductos.splice(index, 1);
    setProductosEnCarrito(nuevosProductos);
  };

  const calcularTotal = () => {
    let total = 0;
    productosEnCarrito.forEach(producto => {
      total += producto.price * producto.quantity;
    });
    return total.toFixed(2);
  };

  return (
    <div className="container-icon">
      <button onClick={toggleMostrarCarrito} className="icon-cart">
        <img src={carritoIcono} alt="Carrito de compras" />
      </button>
      <div className={`container-cart-products ${mostrarCarrito ? '' : 'hidden-cart'}`}>
        {productosEnCarrito.map((producto, index) => (
          <div className="cart-product" key={index}>
            <div className="info-cart-product">
              <h3 className="titulo-producto-carrito">{producto.nameProduct}</h3>
              <span className="precio-producto-carrito">${producto.price}</span>
              <span className="cantidad-producto-carrito">x{producto.quantity}</span>
            </div>
            <button className="icon-close" onClick={() => eliminarProducto(index)}>
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" className="icon-close-svg">
                <path d="M18 6L6 18M6 6l12 12"></path>
              </svg>
            </button>
          </div>
        ))}
        <div className="cart-total">
          <h3>Total:</h3>
          <span className="total-pagar">${calcularTotal()}</span>
        </div>
        <button className="btn-clear-all">Vaciar carrito</button>
      </div>
      <div className="count-products">
        <span id="contador-productos">{productosEnCarrito.length}</span>
      </div>
    </div>
  );
}

export default Carrito;

import React, { useState, useEffect } from 'react';
import '../Carrito/carrito.css';

const Carrito = ({ allProducts, onDeleteProduct, onCleanCart }) => {
  const [products, setProducts] = useState([]);
  const [total, setTotal] = useState(0);

  let id = localStorage.getItem('userID');
  id = parseInt(id, 10);
  
  useEffect(() => {
    fetch("http://localhost:4000/api/carrito/" + id)
      .then((response) => response.json())
      .then(data => {
        setProducts(data);
       
        const totalCost = data.reduce((acc, product) => acc + parseFloat(product.costo), 0);
        setTotal(totalCost);
      });
  }, []);

  return (
    <div className="container-cart-products">
      <div className="carrito-content">
        <div className="carrito-items" style={{ maxHeight: "calc(100vh - 150px)", overflowY: "auto" }}>
          {products && products.length > 0 ? (
            products.map((product, id) => (
              <div className="carrito-item" key={id} style={{ borderBottom: "1px solid #ccc", paddingBottom: "10px", marginBottom: "10px" }}>
                <img src={product.img} alt={product.nombre} />
                <div className="carrito-item-info">
                  <p className='nombrebici' >{product.nombre}</p>
                  <p className='cantidad'>Cantidad: {product.cantidad}</p>
                  <p className='costo'>Precio: ${product.costo}</p>
                  <button className='eliminar' onClick={() => onDeleteProduct(product)}>Eliminar</button>
                </div>
              </div>
            ))
          ) : (
            <p>El carrito está vacío</p>
          )}
        </div>
        <div className="cart-total">
          <h3>Total:</h3>
          <p>${total}</p>
        </div>
      </div>
      <button className="btn-clear-all" onClick={onCleanCart}>Vaciar Carrito</button>
    </div>
  );
};

export default Carrito;
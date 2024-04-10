import React from 'react';

import '../Carrito/carrito.css'; 

const Carrito = ({ allProducts, onDeleteProduct, total, onCleanCart }) => {
  return (
    <div className="container-cart-products">
      {allProducts && allProducts.length > 0 ? ( // Verificación de allProducts
        <div className="carrito-items">
          {allProducts.map(product => (
            <div className="carrito-item" key={product.id}>
              <img src={product.img} alt={product.nameProduct} />
              <div className="carrito-item-info">
                <h3>{product.nameProduct}</h3>
                <p>Cantidad: {product.quantity}</p>
                <p>Precio: ${product.price}</p>
                <button onClick={() => onDeleteProduct(product)}>Eliminar</button>
              </div>
            </div>
          ))}
        </div>
      ) : (
        <p>El carrito está vacío</p>
      )}
      <div className="cart-total">
        <h3>Total:</h3>
        <p>${total}</p>
      </div>
      <button className="btn-clear-all" onClick={onCleanCart}>Vaciar Carrito</button>
    </div>
  );
};

export default Carrito;

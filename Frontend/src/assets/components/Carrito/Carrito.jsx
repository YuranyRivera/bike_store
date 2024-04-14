import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import '../Carrito/carrito.css';

const Carrito = ({ allProducts, onDeleteProduct, onCleanCart }) => {
  const [products, setProducts] = useState([]);
  const [total, setTotal] = useState(0);
  const navigate = useNavigate(); // Obtener la función navigate

  let id = localStorage.getItem('userID');
  id = parseInt(id, 10);
  
  useEffect(() => {
    fetch("http://localhost:4000/api/carrito/" + id)
      .then((response) => response.json())
      .then(data => {
        setProducts(data);
        // Calcular el total sumando los costos de todos los productos
        const totalCost = data.reduce((acc, product) => acc + parseFloat(product.costo), 0);
        setTotal(totalCost);
      });
  }, []);

  const handleGoToPay = () => {
    // Redirige al usuario al componente FormularioPago
    navigate('/formulario_pago');
  };

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
        <button className="btn-go-to-pay" onClick={handleGoToPay}>Ir a pagar</button>
       
      </div>
      <button className="btn-clear-all" onClick={onCleanCart}>Vaciar Carrito</button>
    </div>
  );
};

export default Carrito;
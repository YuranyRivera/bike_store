import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import '../Carrito/carrito.css';

const Carrito = ({ allProducts, onCleanCart }) => {
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

  const handleDeleteProduct = (productToDelete) => {
    // Realizar la solicitud DELETE al backend para eliminar el producto del carrito
    fetch(`http://localhost:4000/api/carrito/${id}/${productToDelete.id_articulo}`, {
      method: 'DELETE',
    })
    .then(response => response.json())
    .then(data => {
      if (data.success) {
        // Actualizar el estado local del carrito eliminando el producto
        const updatedProducts = products.filter(product => product.id_articulo !== productToDelete.id_articulo);
        setProducts(updatedProducts);
        
        // Actualizar el total
        const newTotal = updatedProducts.reduce((acc, product) => acc + parseFloat(product.costo), 0);
        setTotal(newTotal);
      }
    })
    .catch(error => {
      console.error('Error al eliminar el producto del carrito:', error);
    });
  };

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
                  
                  <p className='costo'>Precio: ${product.costo}</p>
                  <button className='eliminar' onClick={() => handleDeleteProduct(product)}>Eliminar</button>
                </div>
              </div>
            ))
          ) : (
            <p>El carrito está vacío</p>
          )}
        </div>
        <div className="cart-total">
          <h3 className='total' >Total:</h3>
          <p className='total' >${total}</p>
        </div>
        <button className="btn-go-to-pay" onClick={handleGoToPay}>Ir a pagar</button>
       
      </div>
      <button className="btn-clear-all" onClick={onCleanCart}>Vaciar Carrito</button>
    </div>
  );
};

export default Carrito;
import React from 'react';

import '../Carrito/carrito.css'; 

const Carrito = ({ allProducts, onDeleteProduct, total, onCleanCart }) => {
  const [products, setProducts] = useState([])

  let id = localStorage.getItem('userID')
  id = parseInt(id, 10)
  useEffect(()=>{
    fetch("http://localhost:4000/api/carrito/"+id)
    .then((response)=>{return response.json()})
    .then(data=>setProducts(data))
  },[])

  return (
    <div className="container-cart-products">
      {products && products.length > 0 ? ( // Verificación de allProducts
        <div className="carrito-items">
          {products.map((product,id) => (
            <div className="carrito-item" key={id}>
              <img src={product.img} alt={product.nombre} />
              <div className="carrito-item-info">
                <h3>{product.nombre}</h3>
                <p>Cantidad: {product.cantidad}</p>
                <p>Precio: ${product.costo}</p>
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

const ProductList = ({ productList, onAddProduct }) => {
  return (
    <div className="container-items">
      <h2>Productos Disponibles</h2>
      <div className="product-list-items">
        {productList.map(product => (
          <div className="item" key={product.id}>
            <figure>
              <img src={product.img} alt={product.nameProduct} />
            </figure>
            <div className="info-product">
              <h3>{product.nameProduct}</h3>
              <p className="price">Precio: ${product.price}</p>
              <button onClick={() => onAddProduct(product)}>Añadir al carrito</button> {/* Pasar la función onAddProduct */}
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};
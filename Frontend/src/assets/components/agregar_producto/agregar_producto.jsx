import React, { useState } from 'react';
import '../agregar_producto/products.css'; // Asegúrate de que la ruta del archivo CSS sea correcta

function AgregarProducto() {
  const [productData, setProductData] = useState({
    nombre: '',
    costo: '',
    stock: '',
    marca: '',
    descripcion: '',
    especificaciones: '',
    cantidad: '',
    imagen: null
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setProductData({
      ...productData,
      [name]: value
    });
  };

  const handleImageChange = (e) => {
    const imageFile = e.target.files[0];
    setProductData({
      ...productData,
      imagen: URL.createObjectURL(imageFile)
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // Lógica para enviar los datos del producto
    console.log('Datos del producto:', productData);
  };

  return (
    <form className="add-product-form" onSubmit={handleSubmit}>
      <h1 className='titulo_prod'>agregar producto</h1>
      <div className="form-container">
      <div className="image-upload">
  {productData.imagen ? (
    <>
      <div className="image-container">
      <img src={productData.imagen} alt="Producto" width="150" />
      <button className="eliminar-imagen" onClick={() => setProductData({ ...productData, imagen: null })}>
        <i className="fas fa-times"></i>
      </button>
      </div>
    </>
  ) : (
    <>
      <label htmlFor="imagen">
        <i className="fas fa-image"></i> 
      </label>
      <input
        type="file"
        id="imagen"
        name="imagen"
        accept="image/*"
        onChange={handleImageChange}
      />
    </>
  )}
</div>

        <div className="form_datos">
          <div className="form-column">
            <div className="form-group">
              <label htmlFor="nombre">Nombre:</label>
              <input
                type="text"
                id="nombre"
                name="nombre"
                value={productData.nombre}
                onChange={handleInputChange}
              />
            </div>
            <div className="form-group">
              <label htmlFor="costo">Costo:</label>
              <input
                type="text"
                id="costo"
                name="costo"
                value={productData.costo}
                onChange={handleInputChange}
              />
            </div>
          </div>
          <div className="form-column">
            <div className="form-group">
              <label htmlFor="stock">Stock:</label>
              <input
                type="text"
                id="stock"
                name="stock"
                value={productData.stock}
                onChange={handleInputChange}
              />
            </div>
            <div className="form-group">
              <label htmlFor="marca">Marca:</label>
              <input
                type="text"
                id="marca"
                name="marca"
                value={productData.marca}
                onChange={handleInputChange}
              />
            </div>
          </div>
          <div className="form-column">
            <div className="form-group">
              <label htmlFor="descripcion">Descripción:</label>
              <textarea
                id="descripcion"
                name="descripcion"
                value={productData.descripcion}
                onChange={handleInputChange}
              ></textarea>
            </div>
            <div className="form-group">
              <label htmlFor="especificaciones">Especificaciones:</label>
              <textarea
                id="especificaciones"
                name="especificaciones"
                value={productData.especificaciones}
                onChange={handleInputChange}
              ></textarea>
            </div>
          </div>
          <div className="form-column">
            <div className="form-group">
              <label htmlFor="cantidad">Cantidad:</label>
              <input
                type="text"
                id="cantidad"
                name="cantidad"
                value={productData.cantidad}
                onChange={handleInputChange}
              />
            </div>
          </div>
        </div>
      </div>
      <button type="submit" className="guardar-button">Guardar</button>

    </form>
  );
}

export default AgregarProducto;

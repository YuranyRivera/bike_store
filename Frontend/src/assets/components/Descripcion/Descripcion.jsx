import React, { useState, useEffect } from 'react';
import "../Descripcion/descripcion.css"
import img from "../../img/imgdeCarrito.png"

function Descripcion({ match }) { // Modificado para recibir match
  const [producto, setProducto] = useState(null);

  useEffect(() => {
    async function fetchProducto() {
      try {
        const response = await fetch(`http://localhost:4000/api/products/${match.params.id}`); // Obtener el producto por su ID
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
  }, [match.params.id]);

  // Renderizar el contenido del producto si está cargado
  if (!producto) {
    return <div>Cargando...</div>;
  }

  return (
    <>
      <div className="rectangulo">
        <img src={img} className="imagen" alt="Bicicleta 1" />
        <div className="info">
          <h2 className="titulo">{producto.nombre}</h2>
          <h2 className="precio">${producto.costo}</h2>
          {/* Agregar el resto de la información del producto aquí */}
        </div>
      </div>
      {/* Agregar el resto del contenido de Descripcion.js aquí */}
    </>
  );
}

export default Descripcion;
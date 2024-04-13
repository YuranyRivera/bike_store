import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import '../Catalogo/catalogo.css';

function Catalogo() {
        const [productos, setProductos] = useState([]);
      
        useEffect(() => {
          async function fetchProductos() {
            try {
              const response = await fetch('http://localhost:4000/api/Bicicletas');
              if (!response.ok) {
                throw new Error('Error al obtener productos');
              }
              const data = await response.json();
              console.log(data);
              setProductos(data.slice(0,58));
            } catch (error) {
              console.error(error);
            }
          }
      
          fetchProductos();
        }, []);
      

    return (
        <div>
          <section className="article">
            <h2 className="tituloprincipal">PRODUCTOS DESTACADOS</h2>
            
            <div className="galery">
              {productos.map(producto => (
                <div className="box-galery" key={producto.id_articulo}>
                  <div className="box-img1">
                    <img className="a" src={`src/assets/img/BIKE_STORE/${producto.categoria_descripcion}/${producto.imagen}/Bici1.png`} alt={producto.nombre} />
                  </div>
                  <h2 className="b">{producto.nombre}</h2>
                  <p className="c">${producto.costo}</p>
                  <Link to={`/producto/${producto.id_articulo}`} className="btn-img">Comprar</Link>
                </div>
              ))}
            </div>
          </section>
        </div>
      );
    }
export default Catalogo;
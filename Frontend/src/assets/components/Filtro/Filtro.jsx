import React, { useState } from 'react';
import '../Filtro/filtro.css';

function Filtro({ filtrarProductos }) {
  const [categorias, setCategorias] = useState([]);
  const [marca, setMarca] = useState('');
  const [precioMin, setPrecioMin] = useState('');
  const [precioMax, setPrecioMax] = useState('');

  const handleFiltrar = () => {
    filtrarProductos(categorias, marca, parseFloat(precioMin), parseFloat(precioMax));
  };

  const handleCategoriaChange = (e) => {
    const { value, checked } = e.target;
    if (checked) {
      setCategorias([...categorias, value]);
    } else {
      setCategorias(categorias.filter((cat) => cat !== value));
    }
  };

  const handleMarcaChange = (e) => {
    const { value } = e.target;
    setMarca(value);
  };

  return (
    <div className="contenedor2">
      <div className="cuadro">
        <h2>Categorías</h2>
        <div>
          <input
            className="filt"
            type="checkbox"
            id="ruta"
            value="Bicicletas De Ruta"
            onChange={handleCategoriaChange}
          />
          <label htmlFor="ruta">Bicicletas De Ruta</label>
        </div>
        <div>
          <input
            className="filt"
            type="checkbox"
            id="urbana"
            value="Bicicletas Urbanas"
            onChange={handleCategoriaChange}
          />
          <label htmlFor="urbana">Bicicletas Urbanas</label>
        </div>
        <div>
          <input
            className="filt"
            type="checkbox"
            id="montana"
            value="Bicicletas De Montaña"
            onChange={handleCategoriaChange}
          />
          <label htmlFor="montana">Bicicletas De Montaña</label>
        </div>

        <h2>Etiquetas</h2>
        <div>
          <input className="filt" type="checkbox" id="outlet" value="Outlet" onChange={handleCategoriaChange} />
          <label htmlFor="outlet">Outlet</label>
        </div>

        <h2>Marca</h2>
        <div>
          <input className="filt" type="radio" id="bmc" name="Marca" value="BMC" onChange={handleMarcaChange} />
          <label htmlFor="bmc">BMC</label>
        </div>
        <div>
          <input className="filt" type="radio" id="scott" name="Marca" value="Scott" onChange={handleMarcaChange} />
          <label htmlFor="scott">Scott</label>
        </div>
        <div>
          <input
            className="filt"
            type="radio"
            id="specialized"
            name="Marca"
            value="Specialized"
            onChange={handleMarcaChange}
          />
          <label htmlFor="specialized">Specialized</label>
        </div>

        <h2>Precio</h2>
        <div className="precio-rango">
          <label htmlFor="minPrice">Min:</label>
          <input
            type="number"
            id="minPrice"
            min="10"
            max="50"
            className="filtro-input"
            value={precioMin}
            onChange={(e) => setPrecioMin(e.target.value)}
          />
          <label htmlFor="maxPrice">Max:</label>
          <input
            type="number"
            id="maxPrice"
            min="10"
            max="50"
            className="filtro-input"
            value={precioMax}
            onChange={(e) => setPrecioMax(e.target.value)}
          />
        </div>

        <div className="boton_filtro" onClick={handleFiltrar}>
          Filtrar
        </div>
      </div>
    </div>
  );
}

export default Filtro;
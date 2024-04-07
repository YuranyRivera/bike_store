import React, { useState } from 'react';
import './barra.css';
import icono from '../../img/iconusuario.png';

const paginas = [
  { nombre: 'Inicio', componente: () => <h2>Inicio</h2> },
  { nombre: 'Inventario', componente: () => <h2>Inventario</h2> },
  { nombre: 'Ventas', componente: () => <h2>Ventas</h2> },
  { nombre: 'Clientes', componente: () => <h2>Clientes</h2> },

];

const BarraLateral = () => {
  const [pagina, setPagina] = useState(paginas[0].nombre);

  return (
    <div className="contenedor">
      <div className="barra-lateral">
        <img src={icono} alt="Icono de usuario" />
        <div className="opciones">
          <ul>
            {paginas.map(({ nombre }) => (
              <li key={nombre} onClick={() => setPagina(nombre)}>
                {nombre}
              </li>
            ))}
          </ul>
        </div>
      </div>
      
      {paginas.find(({ nombre }) => nombre === pagina)?.componente()}
    </div>
  );
};

export default BarraLateral;
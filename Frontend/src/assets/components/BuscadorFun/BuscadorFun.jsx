import React, { useState } from 'react';
import '../BuscadorFun/BuscadorFun.css';

const data = [
  "Bicicletas montaña",
  "Bicicletas ruta",
  "Bicicletas urbana",
  "accesorios"
];

function BuscadorFuncional() {
  const [searchTerm, setSearchTerm] = useState('');
  const [searchResults, setSearchResults] = useState([]);

  const handleInputChange = (event) => {
    setSearchTerm(event.target.value);
  };

  const buscar = () => {
    if (searchTerm.trim() === "") {
      return;
    }

    const results = data.filter(item =>
      item.toLowerCase().includes(searchTerm.toLowerCase())
    );

    setSearchResults(results);
  };

  const handleKeyDown = (event) => {
    if (event.keyCode === 8) {
      setSearchResults([]);
    }
  };

  return (
    <div className="contBuscador">
      <h1>buscador</h1>
      <div className="buscador-wrapper">
        <input
          type="text"
          id="buscar"
          placeholder="Buscar"
          className="buscar-input"
          value={searchTerm}
          onChange={handleInputChange}
          onKeyDown={handleKeyDown}
        />
        <button onClick={buscar} className="buscar-button">
          Buscar
        </button>
      </div>
      <ul id="results" className="results">
        {searchResults.length > 0 ? (
          searchResults.map((result, index) => (
            <li key={index}>{result}</li>
          ))
        ) : (
          <li>No hay resultados para esa búsqueda: {searchTerm}</li>
        )}
      </ul>
    </div>
  );
}

export default BuscadorFuncional;

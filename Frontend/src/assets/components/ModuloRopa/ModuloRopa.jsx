import React from 'react';
import Filtro from '../Filtro/Filtro'; 
import Catalogo from '../CtRopa/Ctropa'; // Asegúrate de tener la ruta correcta

import "../ModuloBici/ModuloBici.css"


function ModuloRopa() {
  return (
    <div className="paginaPrincipal">
      <Filtro />
      <Catalogo />
    </div>
  );
}

export default ModuloRopa;
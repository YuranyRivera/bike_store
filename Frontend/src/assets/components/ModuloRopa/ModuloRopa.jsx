import React from 'react';
import Filtro from '../Filtro/Filtro'; 
import "../ModuloBici/ModuloBici.css"
import Ctropa from '../CtRopa/Ctropa';


function ModuloRopa() {
  return (
    <div className="paginaPrincipal">
      <Filtro />
      <Ctropa/>
    </div>
  );
}

export default ModuloRopa;
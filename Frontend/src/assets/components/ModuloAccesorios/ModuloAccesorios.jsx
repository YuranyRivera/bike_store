import React from 'react';
import Filtro from '../Filtro/Filtro'; 
import "../ModuloBici/ModuloBici.css"
import CatAccesorios from '../CatAccesorios/CatAccesorios';


function ModuloAccesorios() {
  return (

    <div className="paginaPrincipal">
      <Filtro />
      <CatAccesorios/>
    </div>
  );
}

export default ModuloAccesorios;
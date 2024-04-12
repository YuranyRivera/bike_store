import React from 'react';
import "../FondoBici/fondobici.css"
import bici_1 from "../../img/Bicicleta.png";


function FondoBici(){
  return (
    <>
        
      <div className="contenedor">
        <img src= {bici_1}  className="imagen_bici" alt="Bicicleta Fondo" />
        <div className="texto-superpuesto">BICICLETAS</div>
      </div>

    </>

    );
}

export default FondoBici;
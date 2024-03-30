import React from "react";
import "../FondoVestuario/fondovestuario.css"
import vestuario from "../../img/vestuario1.png"

function FondoVestuario () {
    return (
        <div className="contenedor">
        <img src= {vestuario} className="imagen_bici"/>
        <div className="texto-superpuesto">VESTUARIO</div>
        </div>

    );
    
}

export default FondoVestuario;
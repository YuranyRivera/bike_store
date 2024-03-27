import React from "react";
import "../FondoAccesorio/FondoAccesorio.css"
import accesorios from "../../img/accesorios.png"

function FondoAccesorio () {
    return (
        <div className="contenedor">
        <img src= {accesorios} className="imagen_bici"/>
        <div className="texto-superpuesto">ACCESORIOS</div>
        </div>

    );
    
}

export default FondoAccesorio;
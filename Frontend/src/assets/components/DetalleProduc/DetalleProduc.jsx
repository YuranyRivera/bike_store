import React from 'react';
import "../DetalleProduc/DetalleProduc.css"
import bici_1 from "../../img/bici_1.png"

function DetalleProduc () {
    return (
        <div className="detalle-producto">
    <div className="imagen">
        <img id="imagen-producto" src= {bici_1} alt="Imagen del producto" />
    </div>
    <div className="info">
        <h2 id="nombre-producto">Nombre del Producto</h2>
        <p>Precio: $<span id="precio-producto">100</span></p>
        <p>Talla: <span id="talla-producto">M</span></p>
        <p>Color: <span id="color-producto">Azul</span></p>
        
    </div>
</div>
    )
}
export default DetalleProduc;
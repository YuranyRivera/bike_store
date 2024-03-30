import React from "react";
import "../FormularioPago/FormularioPago.css"
const backendURL = "http://localhost:4000";

function FormularioPago () {
    return (
       /* <div className="fondo">*/
        <div className="formu">
            <h1>Formulario de Pago Contraentrega</h1>
            <form action={`${backendURL}/api/procesar-pago-contraentrega`} method="post">
                <div className="form-group">
                    <label className="texto" htmlFor="nombre">Nombre Completo:</label>
                    <input className="mensaje" type="text" id="nombre" name="nombre" required />
                </div>

                <div className="form-group">
                    <label className="texto" htmlFor="direccion">Dirección de Envío:</label>
                    <input className="mensaje" type="text" id="direccion" name="direccion" required />
                </div>

                <div className="form-group">
                    <label className="texto" htmlFor="telefono">Teléfono de Contacto:</label>
                    <input className="mensaje" type="tel" id="telefono" name="telefono" required />
                </div>

                <div className="form-group">
                    <label className="texto" htmlFor="monto">Monto a Pagar:</label>
                    <input className="mensaje" type="number" id="monto" name="monto" required />
                </div>

                <button className="btn_Pedido">Realizar Pedido</button>
            </form>
        </div>
        
    )
}

export default FormularioPago;
import React from 'react';
import "../olvidocontra/olvidocontra.css";
import img from "../../IMG/logoredondeado.png";

function OlvidoContra() {
    return (
        <main className="main">
            <aside className="columna">
                <img src={img} className="imgrd" alt="Logo" />
                <div className="forma">
                    <div className="upper-forma"> {/* Corregido el nombre de la clase */}
                        <h1 className="texto">Pedaleamos para servirle</h1>
                    </div>
                </div>
            </aside>
            <div className="upper-form"> {/* Corregido el nombre de la clase */}
                <form action="" className="formulario">
                    <div className="alineartext">
                        <h2 className="titulo">Recuperación de la cuenta</h2>
                        <label>Recupera tu cuenta de Bike Store</label>
                        <input type="email" className="contenedor" placeholder="Correo electrónico" />
                        <label><u className="contenedor">Te enviaremos un código a tu correo o teléfono</u></label>
                    </div>
                    <div className="btn">
                        <button type="submit" id="btnSubmit" disabled>Siguiente</button>
                    </div>
                </form>
            </div>
        </main>
    );
}

export default OlvidoContra;

import React from 'react';
import '../cambiocontra/cambiocontra.css'
import img from "../../IMG/logoredondeado.png"

function CambiarContraseña() {
  return (
    <html lang="en">
      <head>
        <meta charSet="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Cambiar Contraseña</title>
        <link rel="stylesheet" href="../CSS/cambiocontra.css" />
        <link rel="icon" href="/IMG/logoredondeado.png" />
      </head>
        <main className="main">
          <aside className="columna">
          <img src= {img} className="imgrd" />
            <div className="forma">
              <div className="supper-forma">
                <h1 className="texto">Pedaleamos para servirle</h1>
              </div>
            </div>
          </aside>
          <div className="upper-form">
            <form action="" className="formulario">
              <h2 className="texto">Cambiar contraseña</h2>
              <input type="text" className="contenedor" placeholder="Nueva Contraseña" /><br />
              <input type="text" className="contenedor" placeholder="Contraseña" />
              <div className="btn">
                <a href="inicio.html"><button type="button">Confirmar</button></a>
              </div>
            </form>
          </div>
        </main>
    </html>
  );
}

export default CambiarContraseña;

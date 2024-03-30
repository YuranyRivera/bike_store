import React from 'react';
import "../Descripcion/descripcion.css"
import img from "../../img/imgdeCarrito.png"

function Descripcion() {
    return (
        <body>
            
            <div className="rectangulo">
      <img src={img} className="imagen" alt="Bicicleta 1" />
      <div className="info">
        <h2 className="titulo">Bicicleta De Montaña <br />Roadmaster</h2>
        <h2 className="precio">$3.900.000</h2>
        <h2 className="a">TALLA: XS S M L XL</h2>
        <div className="cart">
          <button type="button" className="button button-qty" data-quantity="minus">-</button>
          <input className="number" type="number" value="1" min="1" max="999" />
          <button type="button" className="button button-qty" data-quantity="plus">+</button>
        </div>
        <h2 className="a">Marca: bmc</h2>
        <button className="boton" type="button">AÑADIR AL CARRITO</button>
      </div>
    </div>

    <div className="textos">
      <h2>Descripción</h2>
      <ul>
        <li>Si todavía piensas que las bicicletas mtb rígidas son iguales es porque aún no conoces la BMC TWOSTROKE AL FIVE. Esta bicicleta ha sido formulada como una bicicleta de alta competición y sus formas se han adaptado a la alta exigencia técnica de los circuitos actuales.</li>
        <li>Un ángulo de dirección de 67˚, un frontal adelantado de la bicicleta y un ángulo de sillín de 75˚ para atacar terrenos empinados y sueltos con una perfecta distribución del peso.</li>
      </ul>
      <h2>Especificaciones</h2>
      <ol>
        <li>Material Cuadro: Twostroke AL Premium Aluminium Hydroformed Internal Cable Routing BSA Threaded Bottom Bracket Post Mount Disc</li>
        <li>Horquilla: SUNTOUR XCM 32</li>
        <li>Marchas: 1x11</li>
        <li>Plato: Lightweight Forged Alloy Cranks 30T 1x Specific Narrow Wide Chainring</li>
        <li>Cassette: SUNRACE 11-46T</li>
        <li>Cadena: KMC 11 spd</li>
        <li>Desviador trasero: SHIMANO Deore 11 spd</li>
        <li>Manetas cambio: SHIMANO Deore 11 spd</li>
        <li>Frenos: SHIMANO BR-MT200 / SHIMANO SM-RT10 Rotors (160/160 S-M - 180/160 L-XL)</li>
        <li>Manillar: Alloy 760mm</li>
        <li>Potencia: BMC MSM01</li>
        <li>Tija sillín: Alloy 31.6mm - 0mm Offset</li>
        <li>Sillín: Selle Royal Seta</li>
        <li>Bujes: SHIMANO MT400</li>
        <li>Ruedas: XCD23</li>
        <li>Llantas: Maxxis Rekon Race 2.25"</li>
        <li>Límite de Peso: 110 Kg</li>
      </ol>
    </div>

        </body>

    );
}

export default Descripcion;
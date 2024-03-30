import React from 'react';
import "../CtRopa/ctropa.css"
import bici_1 from "../../img/vestuario.png"

function CtRopa() {
    return (
        <body>
            
            <div className="catalogo">
            <div className="bicicleta" data-categoria="Bicicletas De Ruta" data-marca="BMC" data-precio="400">
                <img src={bici_1} alt="Bicicleta 1" />
                <h2>Conjunto negro</h2>
                <p> $40.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta" data-categoria="Bicicletas De Montaña" data-marca="BMC" data-precio="500">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $50.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $80.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $34.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $50.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $80.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>
        </div>
            
        <div className="catalogo">
            <div className="bicicleta" data-categoria="Bicicletas De Ruta" data-marca="BMC" data-precio="400">
                <img src={bici_1} alt="Bicicleta 1" />
                <h2>Conjunto negro</h2>
                <p> $40.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta" data-categoria="Bicicletas De Montaña" data-marca="BMC" data-precio="500">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $50.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $80.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $34.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $50.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>

            <div className="bicicleta">
                <img src={bici_1} alt="Bicicleta 2" />
                <h2>Conjunto negro</h2>
                <p> $80.000</p>
                <div className="boton_catalago">Comprar</div>
            </div>
        </div>

        </body>

    );
}

export default CtRopa;
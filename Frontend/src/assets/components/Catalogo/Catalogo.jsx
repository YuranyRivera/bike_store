import React from 'react';
import "../Catalogo/catalogo.css"
import bici_1 from "../../img/bici_1.png"
import { Link } from 'react-router-dom';
function Catalogo() {
    return (
        <body>
            
        <div className="catalogo">
            <div className="bicicleta" data-categoria="Bicicletas De Ruta" data-marca="BMC" data-precio="400">
                <img src=  {bici_1} alt="Bicicleta 1" />
                <h2>Bicicleta de Ruta</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta" data-categoria="Bicicletas De Montaña" data-marca="BMC" data-precio="400">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Montaña</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Carretera</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Carretera</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Carretera</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Carretera</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>
            
            <div className="bicicleta">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Carretera</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta" data-categoria="Bicicletas De Ruta" data-marca="BMC" data-precio="400">
                <img src=  {bici_1} alt="Bicicleta 1" />
                <h2>Bicicleta de Ruta</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta" data-categoria="Bicicletas De Montaña" data-marca="BMC" data-precio="400">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Montaña</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Carretera</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Carretera</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

            <div className="bicicleta">
                <img src=  {bici_1} alt="Bicicleta 2" />
                <h2>Bicicleta de Carretera</h2>
                <p> $400</p>
                <Link to="/info">
                <div className="boton_catalago">Comprar</div>
                </Link>
            </div>

        

        </div>
        </body>

    );
}

export default Catalogo;
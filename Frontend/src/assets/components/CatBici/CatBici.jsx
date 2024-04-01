import React from 'react';
import "../CatBici/catbici.css"
import { Link } from 'react-router-dom';
import bici_1 from "../../img/bici_1.png"

function CatBici() {
    return (
      <body>
    <section className="article">
        <h2 className="tituloprincipal"> PRODUCTOS DESTACADOS </h2>

        <div className="galery">
            <div className="box-galery">
                <div className="box-img1">
                    <img className="a" src={bici_1} alt="Bicicleta 1" />
                </div>
                <h2 className="b">Bicicleta de carretera</h2>
                <p className="c">$400</p>
                <a> <Link to="/info"className="btn-img">Comprar</Link></a>
            </div>

            <div className="box-galery">
                <div className="box-img1">
                    <img className="a" src={bici_1} alt="Bicicleta 1" />
                </div>
                <h2 className="b">Bicicleta de carretera</h2>
                <p className="c">$400</p>
                
                <a> <Link to="/info"className="btn-img">Comprar</Link></a>
            </div>

            <div className="box-galery">
                <div className="box-img1">
                    <img className="a" src={bici_1} alt="Bicicleta 1" />
                </div>
                <h2 className="b">Bicicleta de carretera</h2>
                <p className="c">$400</p>
                <a> <Link to="/info"className="btn-img">Comprar</Link></a>
            </div>
        </div>

        <div className="galery">
            <div className="box-galery">
                <div className="box-img1">
                    <img className="a" src={bici_1} alt="Bicicleta 1" />
                </div>
                <h2 className="b">Bicicleta de carretera</h2>
                <p className="c">$400</p>
                <a> <Link to="/info"className="btn-img">Comprar</Link></a>
            </div>

            <div className="box-galery">
                <div className="box-img1">
                    <img className="a" src={bici_1} alt="Bicicleta 1" />
                </div>
                <h2 className="b">Bicicleta de carretera</h2>
                <p className="c">$400</p>
                <a> <Link to="/info"className="btn-img">Comprar</Link></a>
            </div>

            <div className="box-galery">
                <div className="box-img1">
                    <img className="a" src={bici_1} alt="Bicicleta 1" />
                </div>
                <h2 className="b">Bicicleta de carretera</h2>
                <p className="c">$400</p>
                <a> <Link to="/info"className="btn-img">Comprar</Link></a>
            </div>
        </div>
    </section>
</body>

    );
}

export default CatBici;
import React from 'react';
import "../Productos/productos.css";
import imag1 from "../../img/homepeq1.png";
import imag2 from "../../img/homepeq2.png";
import imag3 from "../../img/homepeq3.png";
import { Link } from 'react-router-dom';

function FondoBici(){
  return (
    <>
        
        <section className="cajagrande">
      <div className="galery1">
        <div className="box-galery1">
          <div className="box-img">
            <img src= {imag1}  className="bici"  alt="imagen" />
            <div className="frase">Nuestro equipo de expertos está aquí para ayudarte a encontrar la bicicleta perfecta para ti</div>
            <Link to="/bicicletas" className="btn-imgs">Ver producto</Link>
          </div>
        </div>

        <div className="box-galery1">
          <div className="box-img">
            <img src= {imag2}  className="bici"  alt="imagen" />
            <div className="frase1">Nuestro equipo de expertos está aquí para ayudarte a encontrar la bicicleta perfecta para ti</div>
            <Link to="/accesorio" className="btn-imgs">Ver producto</Link>
          </div>
        </div>

        <div className="box-galery1">
          <div className="box-img">
            <img src= {imag3}  className="bici" alt="imagen" />
            <div className="frase">Podrás explorar senderos desafiantes y disfrutar de la naturaleza al máximo</div>
            <Link to="/vestuario" className="btn-imgs">Ver producto</Link>
          </div>
        </div>
      </div>
    </section>

      </>

    );
}

export default FondoBici;
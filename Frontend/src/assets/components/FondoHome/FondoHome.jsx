import React from 'react';

import "../FondoHome/FondoHome.css";
import Home from "../../img/homeprincipal.png";

function FondoHome(){
    return (
      <body>
          <section className="banner">
            <div className="caja">
             <p className="title">BIKE STORE</p>
             <p className="title1">¡Creemos que el ciclismo es la mejor manera de explorar el mundo!</p>
            </div>
            <img src= {Home} className="img_banner"  />
            </section>
        </body>
  
      );
  }
  
  export default FondoHome;

import React from 'react';
import { BrowserRouter as Router, Route, Routes, useLocation } from 'react-router-dom';
import { Home } from "./home.jsx";
import {Accesorio} from "./accesorio.jsx"; 
import {Vestuario} from "./vestuario.jsx"; 
import {Info} from "./info.jsx"; 
import {Bicicletas} from "./bicicletas.jsx"; 
import Navbar from "../assets/components/Navbar/Navbar.jsx";
import Footer from "../assets/components/Footer/Footer.jsx";
import Inicio from "../assets/components/Inicio/Inicio.jsx";
import Contactanos from '../assets/components/Contactanos/Contactanos.jsx';
import Registro from '../assets/components/Registro/Registro.jsx';
function App() {
 


  return (
    <>
     
      
      <>
        <Routes>
        <Route path="/Contactanos" element={<Contactanos/>} />
        <Route path = "/bicicletas" element = {<Bicicletas/>}/>
          <Route path = "/accesorio" element = {<Accesorio/>}/>
          <Route path = "/vestuario" element = {<Vestuario/>}/>
          <Route path = "/info" element = {<Info/>}/>
          <Route path = "/Inicio" element = {<Inicio/>}/>
          <Route path = "/Registro" element = {<Registro/>}/>
          <Route path="/" element={<Home />} />
        </Routes>
      </>
      
     
    </>
  );
}

export default App;
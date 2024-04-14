import { BrowserRouter as Router, Route, Routes } from 'react-router-dom' ;
import { Home } from "./home.jsx"; 
import { Accesorio } from "./accesorio.jsx"; 
import { Vestuario } from "./vestuario.jsx"; 
import { Info } from "./info.jsx"; 
import { Bicicletas } from "./bicicletas.jsx"; 
import Ctropa from "../assets/components/CtRopa/Ctropa.jsx"; // Cambio aquí
import Descripcion from "../assets/components/Descripcion/Descripcion.jsx";
import Inicio from "../assets/components/Inicio/Inicio.jsx";
import Contactanos from '../assets/components/Contactanos/Contactanos.jsx';
import Registro from '../assets/components/Registro/Registro.jsx';
import FormularioPago from '../assets/components/FormularioPago/FormularioPago.jsx';
import { useState } from 'react';
function App() {
  const [idUser, setIdUser] = useState(null)
  const addToCart = (producto, cantidades) => {
    // Aquí puedes implementar la lógica para agregar el producto al carrito
    const data = {
      idUser: idUser,
      idProduct: producto.id_articulo,
      quantity: cantidades 
    }

    const opciones = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    }
    fetch("http://localhost:4000/api/carrito", opciones)
    .then(response=>{return response.json()})
    .then(data=>console.log(data))
  };
  
  return (
    <Routes>

      <Route path="home" element={<Home />} />
      <Route path="/bicicletas" element={<Bicicletas />} />
      <Route path="/accesorio" element={<Accesorio />} />
      <Route path="/vestuario" element={<Vestuario />} />
      <Route path="/info" element={<Info />} />
      <Route path = "/" element = {<Inicio setIdUser={setIdUser}/>}/>
      <Route path = "/Registro" element = {<Registro/>}/>
      <Route path="/Ctropa" element={<Ctropa />} /> {/* Cambio aquí */}
      <Route path="/producto/:id_articulo" element={<Descripcion addToCart={addToCart} />} />
      <Route path="/formulario_pago" element={<FormularioPago />} />
      <Route></Route>
    </Routes>
  );
}

export default App;
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom' ;
import { Home } from "./home.jsx"; 
import { Accesorio } from "./accesorio.jsx"; 
import { Vestuario } from "./vestuario.jsx"; 
import { Info } from "./info.jsx"; 
import { Bicicletas } from "./bicicletas.jsx"; 
import Ctropa from "../assets/components/CtRopa/Ctropa.jsx"; // Cambio aquí
import Descripcion from "../assets/components/Descripcion/Descripcion.jsx";
function App() {
  const addToCart = (producto) => {
    // Aquí puedes implementar la lógica para agregar el producto al carrito
    console.log("Producto agregado al carrito:", producto);
  };
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/bicicletas" element={<Bicicletas />} />
      <Route path="/accesorio" element={<Accesorio />} />
      <Route path="/vestuario" element={<Vestuario />} />
      <Route path="/info" element={<Info />} />
      <Route path="/Ctropa" element={<Ctropa />} /> {/* Cambio aquí */}
      <Route path="/producto/:id_articulo" element={<Descripcion addToCart={addToCart} />} />
    </Routes>
  );
}

export default App;
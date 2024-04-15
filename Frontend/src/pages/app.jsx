import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import { useState, useEffect } from 'react';
import { Home } from "./home.jsx";
import { Accesorio } from "./accesorio.jsx";
import { Vestuario } from "./vestuario.jsx";
import { Info } from "./info.jsx";
import { Bicicletas } from "./bicicletas.jsx";
import Ctropa from "../assets/components/CtRopa/Ctropa.jsx";
import Descripcion from "../assets/components/Descripcion/Descripcion.jsx";
import Inicio from "../assets/components/Inicio/Inicio.jsx";
import Contactanos from '../assets/components/Contactanos/Contactanos.jsx';
import Registro from '../assets/components/Registro/Registro.jsx';
import FormularioPago from '../assets/components/FormularioPago/FormularioPago.jsx';
import Usuario from '../assets/components/Usuario/Usuario.jsx';
import Carrito from '../assets/components/Carrito/Carrito.jsx'; // Importa tu componente Carrito

function App() {
  const [idUser, setIdUser] = useState(null);
  const [cartProducts, setCartProducts] = useState([]); // Estado para los productos en el carrito

  useEffect(() => {
    const id = localStorage.getItem('userID');
    if (id) {
      setIdUser(parseInt(id, 10));
      
      // Obtener productos del carrito al cargar la página
      fetch(`http://localhost:4000/api/carrito/${id}`)
        .then(response => response.json())
        .then(data => {
          setCartProducts(data);
        });
    }
  }, []);

  const addToCart = (producto, cantidades) => {
    // Implementa la lógica para agregar el producto al carrito
    const data = {
      idUser: idUser,
      idProduct: producto.id_articulo,
      quantity: cantidades
    };

    const opciones = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    };

    fetch("http://localhost:4000/api/carrito", opciones)
      .then(response => response.json())
      .then(data => {
        console.log(data);
        setCartProducts([...cartProducts, producto]); // Añade el producto al estado del carrito
      });
  };

  const handleDeleteProduct = (productToDelete) => {
    const updatedProducts = cartProducts.filter(product => product.id_articulo !== productToDelete.id_articulo);
    setCartProducts(updatedProducts);
  };

  const handleCleanCart = () => {
    setCartProducts([]);
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
      <Route path="/usuario" component={Usuario} />
      <Route path="/carrito" element={<Carrito allProducts={cartProducts} onDeleteProduct={handleDeleteProduct} onCleanCart={handleCleanCart} />} />
      <Route></Route>
    </Routes>
  );
}

export default App;
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom' ;
import {Home} from "./home.jsx"; 
import {Accesorio} from "./accesorio.jsx"; 
import {Vestuario} from "./vestuario.jsx"; 
import {Info} from "./info.jsx"; 
import {Bicicletas} from "./bicicletas.jsx"; 
import {Prueba} from "./prueba.jsx"; 


function App() {
  return (
          <Routes>
     
          <Route path = "/" element = {<Home/>}/>
          <Route path = "/bicicletas" element = {<Bicicletas/>}/>
          <Route path = "/accesorio" element = {<Accesorio/>}/>
          <Route path = "/vestuario" element = {<Vestuario/>}/>
          <Route path = "/info" element = {<Info/>}/>
          <Route path = "/prueba" element = {<Prueba/>}/>
          
          </Routes>

  );
}

export default App;
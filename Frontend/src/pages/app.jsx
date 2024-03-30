import { BrowserRouter as Router, Route, Routes } from 'react-router-dom' ;
import {Home} from "./home.jsx"; 
import {Accesorio} from "./accesorio.jsx"; 
import {Vestuario} from "./vestuario.jsx"; 
import {Info} from "./info.jsx"; 
import {Bicicletas} from "./bicicletas.jsx"; 


function App() {
  return (
          <Routes>
     
          <Route path = "/" element = {<Bicicletas/>}/>
      
          
          </Routes>

  );
}

export default App;
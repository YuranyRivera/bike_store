import { BrowserRouter as Router, Route, Routes } from 'react-router-dom' ;
import {Home} from "./home.jsx"; 
import {Bicicletas} from "./bicicletas.jsx"; 


function App() {
  return (
          <Routes>
          <Route path = "/" element = {<Home/>}/>
          <Route path = "/bicicletas" element = {<Bicicletas/>}/>
          
          </Routes>

  );
}

export default App;
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom' ;
import {Home} from "./home.jsx"; 
import {Productos} from "./home.jsx"; 

function App() {
  return (
          <Routes>
          <Route path = "/" element = {<Home/>}/>
          <Route path = "/Productos" element = {<Productos/>}/>
          
          </Routes>

  );
}

export default App;
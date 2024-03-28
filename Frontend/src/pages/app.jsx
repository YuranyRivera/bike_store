import { BrowserRouter as Router, Route, Routes } from 'react-router-dom' ;
import {Home} from "./home.jsx"; 


function App() {
  return (
          <Routes>
          <Route path = "/" element = {<Home/>}/>
      
          
          </Routes>

  );
}

export default App;
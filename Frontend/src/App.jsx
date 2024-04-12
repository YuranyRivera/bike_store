import React, { useState } from 'react';
import './App.css';
import CerrarSesion from './assets/components/CerrarSesion/CerrarSesion';
import Cookies from './assets/components/Cookies/Cookies';

function App() {
  const [count, setCount] = useState(0);

  return (
    <>
      <div>
        <CerrarSesion />
        <Cookies/>
      </div>
    </>
  );
}

export default App;

import React from 'react';
import ReactDOM from 'react-dom';
import App from './App.jsx'; // Asegúrate de importar la App si es necesaria
import './index.css';
import OlvidoContra from './assets/components/olvidocontra/olvidocontra.jsx';

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <OlvidoContra />
    <Codigo/>
  </React.StrictMode>
);

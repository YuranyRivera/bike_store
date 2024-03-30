import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import Inicio from './assets/components/Inicio/Inicio.jsx'
import Registro from './assets/components/Registro/Registro.jsx'


ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <Inicio/>
  </React.StrictMode>,
)

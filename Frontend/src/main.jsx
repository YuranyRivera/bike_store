
import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter } from 'react-router-dom';
import { createRoot } from 'react-dom/client'; // Importa createRoot

import App from './pages/app.jsx';
const root = document.getElementById('root');

// Usar createRoot en lugar de render
createRoot(root).render(
  <BrowserRouter>

      <App />
   
  </BrowserRouter>
);




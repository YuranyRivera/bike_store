import React from 'react';
import Filtro from '../Filtro/Filtro'; 
import Catalogo from '../Catalogo/Catalogo'; // Asegúrate de tener la ruta correcta
import "../Filtro/filtro.css"; // Si quieres aplicar estilos globales, de lo contrario, puedes eliminar esta línea
import "../ModuloBici/ModuloBici.css"
import "../Catalogo/catalogo.css"

function ModuloBici() {
  return (
    <div className="paginaPrincipal">
      <Filtro />
      <Catalogo />
    </div>
  );
}

export default ModuloBici;
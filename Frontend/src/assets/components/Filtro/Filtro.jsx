import React from 'react';
import "../Filtro/filtro.css"


function Filtro() {
  function filtrar() {
    // Obtener valores de los filtros
    var categorias = [];
    document.querySelectorAll('input[type="checkbox"]:checked').forEach(function(checkbox) {
        categorias.push(checkbox.value);
    });
    var marcaSeleccionada = document.querySelector('input[name="Marca"]:checked');
    var precioMin = parseFloat(document.getElementById('minPrice').value);
    var precioMax = parseFloat(document.getElementById('maxPrice').value);

    // Filtrar elementos del catálogo
    var bicicletas = document.querySelectorAll('.bicicleta');
    bicicletas.forEach(function(bicicleta) {
        var categoria = bicicleta.getAttribute('data-categoria');
        var marca = bicicleta.getAttribute('data-marca');
        var precio = parseFloat(bicicleta.getAttribute('data-precio'));

        var categoriaMatch = categorias.length === 0 || categorias.includes(categoria);
        var marcaMatch = !marcaSeleccionada || marca === marcaSeleccionada.value;
        var precioMatch = isNaN(precioMin) || isNaN(precioMax) || (precio >= precioMin && precio <= precioMax);

        if (categoriaMatch && marcaMatch && precioMatch) {
            bicicleta.style.display = 'block'; // Mostrar la bicicleta
        } else {
            bicicleta.style.display = 'none'; // Ocultar la bicicleta
        }

    });

    // Restablecer estilos para mantener la alineación
    document.querySelector('.catalogo').style.display = 'none';
    setTimeout(function() {
        document.querySelector('.catalogo').style.display = 'flex';
    }, 50);
}
    return (
        <div className="contenedor2">
        <div className="cuadro">
          <h2>Categorías</h2>
          <div>
            <input className="filt" type="checkbox" id="ruta" value="Bicicletas De Ruta" />
            <label htmlFor="ruta">Bicicletas De Ruta</label>
          </div>
          <div>
            <input className="filt" type="checkbox" id="urbana" value="Bicicletas Urbanas" />
            <label htmlFor="urbana">Bicicletas Urbanas</label>
          </div>
          <div>
            <input className="filt" type="checkbox" id="montana" value="Bicicletas De Montaña" />
            <label htmlFor="montana">Bicicletas De Montaña</label>
          </div>
  
          <h2>Etiquetas</h2>
          <div>
            <input className="filt" type="checkbox" id="outlet" value="Outlet" />
            <label htmlFor="outlet">Outlet</label>
          </div>
  
          <h2>Marca</h2>
          <div>
            <input className="filt" type="checkbox" id="bmc" value="BMC" />
            <label htmlFor="bmc">BMC</label>
          </div>
          <div>
            <input className="filt" type="checkbox" id="scott" value="Scott" />
            <label htmlFor="scott">Scott</label>
          </div>
          <div>
            <input className="filt" type="checkbox" id="specialized" value="Specialized" />
            <label htmlFor="specialized">Specialized</label>
          </div>
  
          <h2>Precio</h2>
          <div>
            <label htmlFor="minPrice">Min:</label>
            <input  type="number" id="minPrice" min="10" max="50" className="filtro-input"/>
          </div>
          <div>
            <label htmlFor="maxPrice">Max:</label>
            <input  type="number" id="maxPrice" min="10" max="50" className="filtro-input" />
          </div>
  
          <div className="boton_filtro" onClick={() => filtrar()}>Filtrar</div>

        </div>
      </div>
    );
  }
  
export default Filtro;
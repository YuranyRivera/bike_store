import React, { useState, useEffect } from 'react';
import '../Dashboard/admin.css'; // Asegúrate de que la ruta del archivo CSS sea correcta
import { useNavigate } from 'react-router-dom';

function Admin() {
  // Funciones eliminar y editar
  const eliminar = () => {
    // Lógica para eliminar
    console.log('Eliminar');
  };

  const editar = () => {
    // Lógica para editar
    console.log('Editar');
  };

  // Estado para controlar qué sección se muestra


  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('http://localhost:3000/api/usuarios');
        const data = await response.json();
        setUserData(data);
      } catch (error) {
        console.error('Error fetching user data:', error);
      }
    };

    fetchData();
  }, []);

  // Estado para controlar qué sección se muestra
  const [selectedSection, setSelectedSection] = useState('attendance');


  const [userData, setUserData] = useState({
    nombres: '',
    apellidos: '',
    correo: '',
    contraseña: ''
  });

  // Función para manejar cambios en los campos del formulario
  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setUserData({
      ...userData,
      [name]: value
    });
  };

  // Función para guardar datos de usuario
  const guardarDatos = () => {
    // Lógica para guardar datos de usuario
    console.log('Datos guardados:', userData);
  };


 
  const navigate = useNavigate();
  
  const handleAgregarProductoClick = () => {
    navigate('/agragar_producto');
  };

   // Función para eliminar un usuario
   const eliminarUsuario = async (idUsuario) => {
    try {
      const response = await fetch(`http://localhost:3000/api/usuarios/${idUsuario}`, {
        method: 'DELETE',
      });
      if (response.ok) {
        // Eliminación exitosa, actualiza la lista de usuarios
        const newData = userData.filter(user => user.id_usuario !== idUsuario);
        setUserData(newData);
        console.log('Usuario eliminado con éxito');
      } else {
        console.error('Error al eliminar el usuario:', response.statusText);
      }
    } catch (error) {
      console.error('Error al eliminar el usuario:', error);
    }
  };
  return (
    <>
    <div className="admin-container">
      <nav className='nav_admin'>
        <ul>
          <li>
            <div className="logo">
              <i className="fas fa-user-circle"></i>
              <span className="nav-item">Admin</span>
            </div>
          </li>
          <li>
            <a href="#" onClick={() => setSelectedSection('attendance')}>
              <i className="fas fa-home"></i>
              <span className="nav-item">Inicio</span>
            </a>
          </li>
          <li>
            <a href="#" onClick={() => setSelectedSection('inventory')}>
              <i className="fas fa-box-open"></i>
              <span className="nav-item">Inventarios</span>
            </a>
          </li>
          <li>
            <a href="#" onClick={() => setSelectedSection('clients')}>
              <i className="fas fa-users"></i>
              <span className="nav-item">Clientes</span>
            </a>
          </li>
          <li>
            <a href="#" className="logout">
              <i className="fas fa-sign-out-alt"></i>
              <span className="nav-item">cerrar</span>
            </a>
          </li>
        </ul>
      </nav>

      <section className="main">
        {selectedSection === 'attendance' && (
          <section className="attendance">
               {/* Formulario de edición de datos de usuario */}
               <h1 className='for_usu'>Editar Datos de Usuario</h1>
            <form className="user-form">
              <div className="form-group unique-class">
                
                <input
                  type="text"
                  id="nombres"
                  name="nombres"
                  placeholder="Ingrese sus nombres"
                  value={userData.nombres}
                  onChange={handleInputChange}
                />
              </div>
              <div className="form-group unique-class">
                
                <input
                  type="text"
                  id="apellidos"
                  name="apellidos"
                  placeholder="Ingrese sus apellidos"
                  value={userData.apellidos}
                  onChange={handleInputChange}
                />
              </div>
              <div className="form-group unique-class">
               
                <input
                  type="email"
                  id="correo"
                  name="correo"
                  placeholder="Ingrese su correo electrónico"
                  value={userData.correo}
                  onChange={handleInputChange}
                />
              </div>
              <div className="form-group unique-class">
             
                <input
                  type="password"
                  id="contraseña"
                  name="contraseña"
                  placeholder="Ingrese su contraseña"
                  value={userData.contraseña}
                  onChange={handleInputChange}
                />
              </div>
              <button type="button" className='botton_guardar' onClick={guardarDatos}>Guardar</button>
            </form>
          </section>
        )}

        {selectedSection === 'inventory' && (
          <section className="inventory">
            <h1>Lista de Inventarios</h1>
            <div className="search_clientes">
              <input type="text" placeholder="Buscar cliente..." />
              <i className="fas fa-search"></i>
            </div>
            <button className="agregar_producto" onClick={handleAgregarProductoClick}>
              Agregar Producto
            </button>
            <table className="table">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Producto</th>
                  <th>Cantidad</th>
                  <th>Precio</th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody className='list_product'>
                <tr>
                  <td>1</td>
                  <td>bici 1</td>
                  <td>11</td>
                  <td>1000000000</td>
                  <td> {/* Botones dentro de esta celda */}
                    <button className="eliminar" onClick={eliminar}>
                      Eliminar
                    </button>
                    <button className="editar" onClick={editar}>
                      Editar
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>
          </section>
        )}

        {selectedSection === 'clients' && (
          <section className="clients">
            <h1>Lista de Clientes</h1>
            <div className="search_clientes">
              <input type="text" placeholder="Buscar cliente..." />
              <i className="fas fa-search"></i>
            </div>
            
            <table className="table">
              <thead>
                <tr>
                  
                  <th>ID</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Correo</th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody className='list_client'>
                {userData.map((user) => (
                  <tr key={user.id_usuario}>
                   
                    <td>{user.id_usuario}</td>
                    <td>{user.nombre}</td>
                    <td>{user.apellidos}</td>
                    <td>{user.correo}</td>
                    <td> {/* Botones dentro de esta celda */}
                    <button className="eliminar" onClick={() => eliminarUsuario(user.id_usuario)}>
                      Eliminar
                    </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </section>
        )}
      </section>
    </div>
    </>
  );
}

export default Admin;

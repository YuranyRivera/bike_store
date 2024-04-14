import React, { useState } from 'react';
import '../Registro/registro.css';
import logoRedondo from '../../img/logoredondeado.png';
import { Link } from 'react-router-dom';

function Registro() {
  const [nombre, setNombre] = useState('');
  const [apellidos, setApellidos] = useState('');
  const [correo, setCorreo] = useState('');
  const [contraseña, setContraseña] = useState('');
  const [aceptarTerminos, setAceptarTerminos] = useState(false);
  const [errors, setErrors] = useState({});

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    if (name === 'nombre') {
      setNombre(value);
    } else if (name === 'apellidos') {
      setApellidos(value);
    } else if (name === 'correo') {
      setCorreo(value);
    } else if (name === 'contraseña') {
      setContraseña(value);
    } else if (name === 'aceptarTerminos') {
      setAceptarTerminos(!aceptarTerminos);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    const validationErrors = validateForm();
    if (Object.keys(validationErrors).length === 0) {
      try {
        const response = await fetch('http://localhost:4000/api/registro', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ nombre, apellidos, correo, contraseña, id_rol: 1, aceptarTerminos }),
        });
        const data = await response.json();
        if (response.ok) {
          console.log(data.message);
          // Redirect to login page or show success message
        } else {
          console.error(data.error);
          setErrors(data.errors);
        }
      } catch (error) {
        console.error(error);
        setErrors({ serverError: 'An error occurred while registering' });
      }
    } else {
      setErrors(validationErrors);
    }
  };

  const validateForm = () => {
    const errors = {};
    if (!nombre.trim()) {
      errors.nombre = 'El nombre es requerido';
    }
    if (!apellidos.trim()) {
      errors.apellidos = 'Los apellidos son requeridos';
    }
    if (!correo.trim()) {
      errors.correo = 'El correo electrónico es requerido';
    } else if (!isValidEmail(correo)) {
      errors.correo = 'El correo electrónico no es válido';
    }
    if (!contraseña.trim()) {
      errors.contraseña = 'La contraseña es requerida';
    } else if (contraseña.trim().length < 8) {
      errors.contraseña = 'La contraseña debe tener al menos 8 caracteres';
    }
    if (!aceptarTerminos) {
      errors.aceptarTerminos = 'Debes aceptar los términos y condiciones';
    }
    return errors;
  };

  const isValidEmail = (correo) => {
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailRegex.test(correo);
  };

  return (
    <main>
      <div className="containerr1">
        <aside className="columna">
          <img src={logoRedondo} className="imgrd"  alt="" />
          <div className="forma">
            <h5 className="texto">Pedaleamos para servirle</h5>
          </div>
        </aside>

        <div className="upper-form">
          <form onSubmit={handleSubmit} className="formulario">
            <h2 className="clas">Registro</h2>

            <input
              className={`campo ${errors.nombre ? 'error-field' : ''}`}
              type="text"
              name="nombre"
              value={nombre}
              placeholder="Nombre"
              onChange={handleInputChange}
              autoComplete="off"
            />
            {errors.nombre && <span className="error">{errors.nombre}</span>}

            <input
              className={`campo ${errors.apellidos ? 'error-field' : ''}`}
              type="text"
              name="apellidos"
              value={apellidos}
              placeholder="Apellidos"
              onChange={handleInputChange}
              autoComplete="off"
            />
            {errors.apellidos && <span className="error">{errors.apellidos}</span>}

            <input
              className={`campo ${errors.correo ? 'error-field' : ''}`}
              type="text"
              name="correo"
              value={correo}
              placeholder="Correo electrónico"
              onChange={handleInputChange}
              autoComplete="off"
            />
            {errors.correo && <span className="error">{errors.correo}</span>}

            <input
              className={`campo ${errors.contraseña ? 'error-field' : ''}`}
              type="password"
              name="contraseña"
              value={contraseña}
              placeholder="Contraseña"
              onChange={handleInputChange}
            />
            {errors.contraseña && <span className="error">{errors.contraseña}</span>}

            <div className="ordenar2">
              <input
                className={`checkbox ${errors.aceptarTerminos ? 'error-field' : ''}`}
                type="checkbox"
                id="aceptarTerminos"
                name="aceptarTerminos"
                checked={aceptarTerminos}
                onChange={handleInputChange}
              />
              <label className='terminos' htmlFor="aceptarTerminos">Aceptar términos y condiciones</label>
            </div>
            {errors.aceptarTerminos && <span className="error">{errors.aceptarTerminos}</span>}

            <div className="btn">
              <button className='Registrar' type="submit">Registrarse</button>
            </div>
            <div className="bottom-form">
              <div className="no-acount">¿Ya tienes cuenta?</div>
              <Link to ="/Inicio" className="signup">
                Iniciar sesión</Link>
            </div>
          </form>
        </div>
      </div>
    </main>
  );
}

export default Registro;
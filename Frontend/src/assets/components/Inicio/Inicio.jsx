import React, { useState } from 'react';
import '../Inicio/inicio.css';
import logoRedondo from '../../img/logoredondeado.png';
import { Link } from 'react-router-dom';
function Inicio() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [errors, setErrors] = useState({});

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    if (name === 'email') {
      setEmail(value);
    } else if (name === 'password') {
      setPassword(value);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    const validationErrors = validateForm();
    if (Object.keys(validationErrors).length === 0) {
      try {
        const response = await fetch('http://localhost:3001/login', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ email, password }),
        });
        const data = await response.json();
        if (response.ok) {
          console.log(data.message);
          // Aquí puedes realizar acciones adicionales después de iniciar sesión
        } else {
          console.error(data.message);
          setErrors({ serverError: data.message });
        }
      } catch (error) {
        console.error('Error de conexión:', error.message);
        setErrors({ serverError: 'Error de conexión' });
      }
    } else {
      setErrors(validationErrors);
    }
  };

  const validateForm = () => {
    const errors = {};
    if (!email.trim()) {
      errors.email = 'El correo electrónico es requerido';
    } else if (!isValidEmail(email)) {
      errors.email = 'El correo electrónico no es válido';
    }
    if (!password.trim()) {
      errors.password = 'La contraseña es requerida';
    } else if (password.trim().length < 8) {
      errors.password = 'La contraseña debe tener al menos 8 caracteres';
    }
    return errors;
  };

  const isValidEmail = (email) => {
    // Expresión regular para validar el formato del correo electrónico
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailRegex.test(email);
  };

  return (
   
      <div className="containerr1">
      <aside className="columna">
      <img src={logoRedondo} className="imgrd"  alt="" />
        <div className="forma">
          <h5 className="texto">Pedaleamos para servirle</h5>
        </div>
      </aside>

      <div className="upper-form">
        <form onSubmit={handleSubmit} className="formulario">
          <h2>Iniciar sesión</h2>
          <input
            className={`monda ${errors.email ? 'error-field' : ''}`}
            type="text"
            name="email"
            value={email}
            placeholder="Correo electrónico"
            onChange={handleInputChange}
          />
          {errors.email && <span className="error">{errors.email}</span>}
          <input
            className='monda'
            type="password"
            name="password"
            value={password}
            placeholder="Contraseña"
            onChange={handleInputChange}
          />
          {errors.password && <span className="error">{errors.password}</span>}
          <a href="../HTML/olvidocontra.html" className="recuperar">
            <h5>¿Olvidaste tu contraseña?</h5>
          </a>
          <div className="btn">
          <Link to="/">
            <button type="submit">Iniciar sesión</button>
            </Link>
          </div>
          <div className="bottom-form">
            <div className="no-acount">¿No tienes cuenta?</div>
            <Link to ="/Registro" className="signup">Registrarse</Link>
          </div>
        </form>
      </div>
      </div>
   
  );
}

export default Inicio;
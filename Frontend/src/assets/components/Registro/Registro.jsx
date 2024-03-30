import React, { useState } from 'react';
import "../Registro/registro.css";

function Registro() {
    const [nombres, setNombres] = useState('');
    const [apellidos, setApellidos] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [aceptarTerminos, setAceptarTerminos] = useState(false);
    const [errors, setErrors] = useState({});

    const handleInputChange = (e) => {
        const { name, value } = e.target;
        if (name === 'nombres') {
            setNombres(value);
        } else if (name === 'apellidos') {
            setApellidos(value);
        } else if (name === 'email') {
            setEmail(value);
        } else if (name === 'password') {
            setPassword(value);
        } else if (name === 'aceptarTerminos') {
            setAceptarTerminos(!aceptarTerminos);
        }
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        const validationErrors = validateForm();
        if (Object.keys(validationErrors).length === 0) {
            // Aquí puedes enviar el formulario o realizar cualquier acción adicional
            console.log('Formulario válido, enviar datos:', { nombres, apellidos, email, password, aceptarTerminos });
        } else {
            setErrors(validationErrors);
        }
    };

    const validateForm = () => {
        const errors = {};
        if (!nombres.trim()) {
            errors.nombres = 'El nombre es requerido';
        }
        if (!apellidos.trim()) {
            errors.apellidos = 'Los apellidos son requeridos';
        }
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
        if (!aceptarTerminos) {
            errors.aceptarTerminos = 'Debes aceptar los términos y condiciones';
        }
        return errors;
    };

    const isValidEmail = (email) => {
        const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        return emailRegex.test(email);
    };

    return (
        <main>
            <aside className="columna">
                <img className="imgrd" src="../IMG/logoredondeado.png" alt="" />
                <div className="forma">
                    <h5 className="texto">Pedaleamos para servirle</h5>
                </div>
            </aside>

            <div className="upper-form">
                <form onSubmit={handleSubmit} className="formulario">
                    <h2 className="clas">Registro</h2>

                    <input
                        className={`campo ${errors.nombres ? 'error-field' : ''}`}
                        type="text"
                        name="nombres"
                        value={nombres}
                        placeholder="Nombres"
                        onChange={handleInputChange}
                        autocomplete="off"
                    />
                    {errors.nombres && <span className="error">{errors.nombres}</span>}

                    <input
                        className={`campo ${errors.apellidos ? 'error-field' : ''}`}
                        type="text"
                        name="apellidos"
                        value={apellidos}
                        placeholder="Apellidos"
                        onChange={handleInputChange}
                        autocomplete="off"
                    />
                    {errors.apellidos && <span className="error">{errors.apellidos}</span>}

                    <input
                        className={`campo ${errors.email ? 'error-field' : ''}`}
                        type="text"
                        name="email"
                        value={email}
                        placeholder="Correo electrónico"
                        onChange={handleInputChange}
                        autocomplete="off"
                    />
                    {errors.email && <span className="error">{errors.email}</span>}

                    <input
                        className={`campo ${errors.password ? 'error-field' : ''}`}
                        type="password"
                        name="password"
                        value={password}
                        placeholder="Contraseña"
                        onChange={handleInputChange}
                    />
                    {errors.password && <span className="error">{errors.password}</span>}

                    <div className="ordenar2">
                        <input
                            className={`checkbox ${errors.aceptarTerminos ? 'error-field' : ''}`}
                            type="checkbox"
                            id="aceptarTerminos"
                            name="aceptarTerminos"
                            checked={aceptarTerminos}
                            onChange={handleInputChange}
                        />
                        <label htmlFor="aceptarTerminos">Aceptar términos y condiciones</label>
                    </div>
                    {errors.aceptarTerminos && <span className="error">{errors.aceptarTerminos}</span>}

                    <div className="btn">
                        <button type="submit">Registrarse</button>
                    </div>
                    <div className="bottom-form">
                        <div className="no-acount">¿Ya tienes cuenta?</div>
                        <a href="../HTML/inicio.html" className="signup">Iniciar sesión</a>
                    </div>
                </form>
            </div>
        </main>
    );
}

export default Registro;

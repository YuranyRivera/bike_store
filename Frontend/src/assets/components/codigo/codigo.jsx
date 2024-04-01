import React, { useState } from 'react';
import '../codigo/codigo.css'
import img from "../../IMG/logoredondeado.png"


function IngresaCodigo() {
    const [code, setCode] = useState('');
    const [errorMessage, setErrorMessage] = useState('');

    const handleInputChange = (event) => {
        const newCode = event.target.value.trim();
        setCode(newCode);

        if (newCode.length !== 6) {
            setErrorMessage('Please enter a 6-digit code.');
        } else {
            setErrorMessage('');
        }
    };

    const handleSubmit = (event) => {
        event.preventDefault();

        if (code.length !== 6) {
            setErrorMessage('Please enter a 6-digit code.');
            return;
        }

        // Aquí puedes realizar alguna acción con el código, como enviarlo a través de una solicitud HTTP
        console.log('Código ingresado:', code);
    };

    return (
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Ingresa el código</title>
                <link rel="stylesheet" href="../CSS/codigo.css" />
                <link rel="icon" href="../IMG/logoredondeado.png" />
            </head>
            <body>
                <main className="main">
                    <aside className="columna">
                    <img src= {img} className="imgrd" />
                        <div className="forma">
                            <div className="supper-forma">
                                <h1 className="texto">Pedaleamos para servirle</h1>
                            </div>
                        </div>
                        <div id="error-message" className="error-message">{errorMessage}</div>
                    </aside>
                    <div className="upper-form">
                        <form action="" className="formulario" onSubmit={handleSubmit}>
                            <h2 className="titulo">Escribe el Código</h2>
                            <input
                                type="text"
                                placeholder="Código"
                                value={code}
                                onChange={handleInputChange}
                            />
                            <div className="btn">
                                <button type="submit" disabled={code.length !== 6}>Confirmar</button>
                            </div>
                        </form>
                    </div>
                </main>
            </body>
        </html>
    );
}

export default IngresaCodigo;

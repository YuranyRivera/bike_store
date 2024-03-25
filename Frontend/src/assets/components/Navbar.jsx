import React from 'react';
import "../style/navbar.css"
import 'bootstrap/dist/css/bootstrap.min.css'; // Importa los estilos de Bootstrap
import { Navbar, Nav, Container , NavLink} from 'react-bootstrap'; // Importa los componentes de react-bootstrap

function NavigationBar() {
    return (
        <Navbar bg="body-tertiary" expand="lg">
          <Container fluid>
            <Navbar.Brand href="#">Navbar</Navbar.Brand>
            <Navbar.Toggle aria-controls="navbarNav" />
            <Navbar.Collapse id="navbarNav">
              <Nav className="me-auto">
                <NavLink active aria-current="page" href="#">Home</NavLink>
                <NavLink href="#">Features</NavLink>
                <NavLink href="#">Pricing</NavLink>
                <NavLink disabled>Disabled</NavLink>
              </Nav>
            </Navbar.Collapse>
          </Container>
        </Navbar>
    );
}

export default NavigationBar;
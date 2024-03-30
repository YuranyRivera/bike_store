import Navbar from "../assets/components/Navbar/Navbar.jsx";
import Catalogo from "../assets/components/Catalogo/Catalogo.jsx";
import Footer from "../assets/components/Footer/Footer.jsx";
import FondoHome from "../assets/components/FondoHome/FondoHome.jsx";
import Productos from "../assets/components/Productos/producto.jsx";

export const Home = () => {
 

    return (
      <>
    <Navbar/>
    <FondoHome/>
    <Productos/>
    <Catalogo />
    <Footer />

      </>
    );
  };
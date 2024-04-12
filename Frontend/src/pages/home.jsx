import Navbar from "../assets/components/Navbar/Navbar.jsx";
import CatBici from "../assets/components/CatBici/CatBici.jsx";
import Footer from "../assets/components/Footer/Footer.jsx";
import FondoHome from "../assets/components/FondoHome/FondoHome.jsx";
import Productos from "../assets/components/Productos/producto.jsx";

export const Home = () => {
 

    return (
      <>
        <Navbar/>
        <FondoHome/>
        <Productos/>
        <CatBici />
        <Footer />
      </>
    );
  };
import './App.css'
import Catalogo from './assets/components/Catalogo/Catalogo'
import Contactanos from './assets/components/Contactanos/Contactanos'
import Filtro from './assets/components/Filtro/Filtro'
import FondoAccesorio from './assets/components/FondoAccesorio/FondoAccesorio'
import FondoBici from './assets/components/FondoBici/FondoBici'
import FondoContac from './assets/components/FondoContac/FondoContac'
import Footer from './assets/components/Footer/Footer'
import ModuloBici from './assets/components/ModuloBici/ModuloBici'


function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <Catalogo/>
        <Filtro/>
        <FondoBici/>
        <Footer/>
        <FondoAccesorio/>
        <Contactanos/>
        <FondoContac/>
        <ModuloBici/>
        

      </div>
     
    </>
  )
}

export default App

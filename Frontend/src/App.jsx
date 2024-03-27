import './App.css'
import Catalogo from './assets/components/Catalogo'
import Inicio from './assets/components/Inicio/Inicio'
import Registro from './assets/components/Registro/Registro'


function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <Navbar/>
        <Inicio/>
        <Registro/>

   
      </div>
     
    </>
  )
}

export default App

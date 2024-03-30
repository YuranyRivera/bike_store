import './App.css'
import Inicio from './assets/components/Inicio/Inicio'
import Registro from './assets/components/Registro/Registro'


function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <Inicio/>
        <Registro/>

   
      </div>
     
    </>
  )
}

export default App

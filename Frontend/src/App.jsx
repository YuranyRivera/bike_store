import './App.css'
import Contactanos from './assets/components/Contactanos/Contactanos'
import DetalleProduc from './assets/components/DetalleProduc/DetalleProduc'
import FormularioPago from './assets/components/FormularioPago/FormularioPago'
import ModuloBici from './assets/components/ModuloBici/ModuloBici'



function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
 

        <Contactanos/>
       
        <ModuloBici/>
        <FormularioPago/>
        <DetalleProduc/>
        


      </div>
     
    </>
  )
}

export default App

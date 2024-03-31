import './App.css'
import OlvidoContra from './assets/components/olvidocontra/olvidocontra'


function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <OlvidoContra/>
        <Codigo/>
        <CambioContra/>

   
      </div>
     
    </>
  )
}

export default App

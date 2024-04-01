import { useState } from 'react'
import './App.css'
import Block from './components/Block'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div className="board">
       <div className="row">
        <Block />
        <Block />
        <Block />
       </div>
       <div className="row">
        <Block />
        <Block />
        <Block />
       </div>
       <div className="row">
        <Block />
        <Block />
        <Block />
       </div>
      </div>;
    </>
  )
}

export default App

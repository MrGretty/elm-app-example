import React from 'react';
import Elm from 'react-elm-components';
import { Hello } from './components/Hello.elm';

function App() {
  return (
    <div>
      <Elm src={Hello} />
    </div>
  );
}

export default App;

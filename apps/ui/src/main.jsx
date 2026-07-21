import React from 'react';
import ReactDOM from 'react-dom';
import PrimeReact from 'primereact/utils';
import App from './App';
import './index.css';

import 'primereact/resources/themes/saga-blue/theme.css';
import 'primereact/resources/primereact.min.css';
import 'primeicons/primeicons.css';

PrimeReact.ripple = true;

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

import { useState } from 'react';
import { Card } from 'primereact/card';
import { Button } from 'primereact/button';
import { InputText } from 'primereact/inputtext';
import './App.css';

function App() {
  const [query, setQuery] = useState('');

  return (
    <main className="app-shell">
      <Card title="Transparent Governance" subTitle="PrimeReact v5 UI starter">
        <p className="intro-copy">
          This UI package is scaffolded with PrimeReact v5 and ready for feature work.
        </p>

        <div className="controls">
          <span className="p-input-icon-left control-input">
            <i className="pi pi-search" />
            <InputText
              value={query}
              onChange={(event) => setQuery(event.target.value)}
              placeholder="Search decisions or funds"
            />
          </span>
          <Button label="Create Decision" icon="pi pi-plus" />
        </div>

        <p className="hint">
          Current search value: <strong>{query || 'None'}</strong>
        </p>
      </Card>
    </main>
  );
}

export default App;

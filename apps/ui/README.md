# UI package

PrimeReact v5-based UI starter for Transparent Governance.

## Prerequisites

- Docker CLI available as `docker`

## Install dependencies

```bash
./npmInstall.sh
```

## Run dev server (through Docker)

```bash
./npmRun.sh dev
```

The UI is available at <http://localhost:5173>. Set `VITE_PORT` to use a
different host port, for example `VITE_PORT=5174 ./npmRun.sh dev`.

## Build

```bash
./npmRun.sh build
```

## Notes

- Uses PrimeReact `5.0.2` and `primeicons`.
- Theme is configured in `src/main.jsx` using `saga-blue`.

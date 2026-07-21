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
./npmRun.sh dev -- --host 0.0.0.0 --port 5173
```

## Build

```bash
./npmRun.sh build
```

## Notes

- Uses PrimeReact `5.0.2` and `primeicons`.
- Theme is configured in `src/main.jsx` using `saga-blue`.

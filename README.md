# Transparent Governance

Transparent Governance is a set of applications and shared libraries designed to help large organizations enforce responsible and accountable governance.

## The problem

Successful governance depends heavily on whether an organization's members can clearly understand where funds come from, how they are allocated, and where they are ultimately disbursed under the organization's rules.

As organizations grow, this information often becomes fragmented, difficult to access, or impossible to trace. A lack of financial transparency creates opportunities for abuse, weakens accountability, and erodes trust between members and those responsible for governing the organization.

Transparent Governance intends to address this problem by enforcing rules across the entire financial chain, from the collection of funds through their final disbursement. Financial activity should be attributable to explicit governance decisions rather than opaque pools of money.

## Core principles

- **End-to-end traceability:** Funds should be traceable from collection and allocation to final expenditure.
- **Decision-based spending:** Every expenditure must reference the governance decisions that authorize it.
- **Restricted fund usage:** Money may only be spent from funds associated with the decisions authorizing that expenditure.
- **Accountability by design:** Audit records should identify approvals, decisions, funds, amounts, timestamps, and supporting evidence.
- **Rule enforcement:** Organizational rules should be enforced by the system throughout the financial lifecycle, not applied only during retrospective reporting.
- **Transparent but controlled access:** Authorized members should be able to inspect the information needed to understand and verify the flow of funds.

## Security and access

Governance and financial information is intended to be encrypted. Access will be granted according to pre-established authorization rules so that transparency does not require unrestricted disclosure.

The system should make access decisions explicit and auditable while protecting information from unauthorized parties. Encryption, identity, authorization, and key-management implementations will be supplied by technology-specific adapters rather than embedded in the business rules.

## Domain model

The initial domain is built around three enforceable relationships:

1. A governance **decision** is associated with a dedicated **fund**, or with a clearly defined set of funds.
2. Every **expenditure** references the decision or decisions that authorize it.
3. An expenditure may draw only from funds linked to those authorizing decisions.

These relationships are system invariants. APIs and user interfaces should make unattributed spending invalid rather than merely warning about it.

## Architecture

The repository follows Onion Architecture, also known as Ports and Adapters:

- Plain, technology-agnostic business rules and port contracts form the inner layers.
- Technology-specific code, such as user interfaces, databases, HTTP services, encryption providers, and external SDKs, implements those contracts in outer layers.
- Dependencies point toward the business rules. Core logic must not depend on frameworks or concrete implementations.

These are architectural responsibilities, not required directory names. A folder named `infrastructure` is neither required nor sufficient for compliance with the architecture.

## Repository layout

- `apps/` contains deployable applications and their technology-specific adapters.
- `packages/` contains shared business modules, contracts, and intentionally shared libraries.
- `.cursor/rules/` contains detailed domain, architecture, and workspace guidance.

The current UI application is under `apps/ui` and uses React with PrimeReact v5.

## Development

Open `transparent-governance.code-workspace` in VS Code or Cursor to load the repository root, applications, and packages as a multi-root workspace.

Node.js commands for the UI run through Docker; a host Node.js installation is not required.

```bash
cd apps/ui
./npmInstall.sh
./npmRun.sh dev -- --host 0.0.0.0 --port 5173
```

Create a production build with:

```bash
cd apps/ui
./npmRun.sh build
```

For detailed contributor guidance, see `AGENTS.md` and the rules under `.cursor/rules/`.
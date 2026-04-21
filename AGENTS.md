# Agent and contributor context

## What this repository is for

Applications and shared libraries for **transparent governance**: making **spending transparent** and **accountable** by tying money to explicit **decisions** and **funds**.

## Domain (authoritative summary)

- Each **decision** is associated with a **dedicated fund** (or defined set of funds).
- **All expenditure** must reference the **decisions** that authorize it.
- Money may **only** be spent from **funds linked to those same decisions**.

Detailed wording and implementation guidance live in **`.cursor/rules/business-context.mdc`**.

## Repository layout

- **`apps/`** — deployable applications.
- **`packages/`** — shared libraries and modules.

See **`.cursor/rules/workspace-layout.mdc`** for conventions when adding projects.

## Opening in Cursor / VS Code

Open **`transparent-governance.code-workspace`** for a multi-root workspace (root + `apps` + `packages`).

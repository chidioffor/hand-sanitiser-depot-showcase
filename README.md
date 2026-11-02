# Hand Sanitiser Depot — public engineering showcase

> A safe, representative demonstration of my approach to commerce-platform delivery—not the HandSanitiserDepot application source code.

Hand Sanitiser Depot is presented as an e-commerce case study: a customer-facing product catalogue, a structured checkout journey, and operational workflows that keep order status clear from basket through fulfilment. The underlying project remains private.

## What this showcase demonstrates

- **Commerce journey design:** a focused path from product discovery to checkout confirmation.
- **Workflow modelling:** explicit order states make payment and fulfilment progress understandable.
- **Platform integration:** a composable storefront separates customer experience, commerce rules, payments, and operations.
- **Delivery foundations:** the project is grounded in conventional web architecture, database-backed product data, and deployable application services.

## Technology lens

| Area | Representative tools |
| --- | --- |
| Application | Ruby, Rails |
| Commerce | Solidus |
| Data & web delivery | MySQL, Puma, Webpacker, SCSS |
| Payments | Gateway integration boundaries |
| Release workflow | Capistrano, automated browser testing |

## Safe sample code

[`src/order_workflow.rb`](src/order_workflow.rb) is a standalone Ruby illustration of an order state transition. It has no external dependencies and does not send, accept, or process a payment.

```bash
ruby src/order_workflow.rb
```

## Architecture

Read [the architecture notes](docs/architecture.md) for a public-safe conceptual overview of a commerce journey and the engineering trade-offs it illustrates.

## Boundaries

This repository contains independently written illustrative material only. It intentionally excludes private application source, product records, customer data, order records, payment credentials, gateway configuration, database schemas, infrastructure, and deployment details. It is a portfolio case study—not a live shop or payment service.

© Chidiebere Offor. Demonstration material; no licence to use the Hand Sanitiser Depot name or underlying private implementation is granted.

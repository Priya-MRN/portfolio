# Priyadharshini Arumugam — Portfolio

**Full-Stack Software Engineer · Backend-leaning · 6+ years of production ownership**
Puducherry, India · Open to remote

[Portfolio](index.html) · [Résumé (1 page)](resume.html) · [Detailed CV](cv.html)
[Email](mailto:priyadharshiniarumugam52@gmail.com) · [LinkedIn](https://www.linkedin.com/in/priyadharshini-arumugam-a43973229) · [GitHub](https://github.com/Priya-MRN) · [HackerRank](https://www.hackerrank.com/profile/priyadharshin782)

---

## About

Backend-leaning full-stack engineer with 6+ years of end-to-end ownership of production web and SaaS applications
— designing the schema, building the API on top of it, and shipping the interface that calls it.

Strong foundation in PHP/Laravel and Node.js with deep MySQL schema-design experience, and a track record of
modernising legacy systems: three production migrations delivered (nested CodeIgniter monoliths to Laravel,
Laravel 6 → 8) without losing logic shared across packages. More recently working in the delivery layer —
GitHub Actions, Railway, Confluence, and Cloudflare Workers — and with AI-assisted development workflows.

Currently expanding into TypeScript, React/Next.js, and AI product engineering.

---

## Selected work

### Automated Changelog Pipeline — *in production*
`GitHub Actions · Confluence REST API · Cloudflare Workers · Railway`

Release notes were being written by hand, or skipped — leaving support and non-technical stakeholders with no
reliable record of what shipped. This pipeline removed the manual step entirely.

**Flow**

```
merge to main
  → GitHub Action triggers
  → extract commits since last successful production release tag
  → filter + format changelog (grouped by type via conventional commits)
  → POST to Confluence "Releases" page via REST API
  → notify team through Cloudflare Worker
  → Railway deployment proceeds
```

**Design decisions**

| Concern | Choice |
| --- | --- |
| Scope | Environment-aware — runs only in production context |
| Criticality | Non-blocking: the changelog is best-effort, the deploy is the critical path |
| Failure handling | Retries on external API calls; the action is marked failed so breaks surface immediately |
| Reuse | Clear separation of concerns, so the action extends to other internal automation |

**Outcome** — manual release-note writing disappeared, the team gained a searchable history in Confluence, and
stakeholders could see what went live without asking engineering.

---

### Practice Self-Compassion (MSC) — *in active development*
`Laravel · MySQL · REST API · Railway`

Rebuilt the backend from CodeIgniter to Laravel end to end — full API and schema migration — then grew the
frontend from a minimal shell into a complete course-creation and course-study platform with blogs, audio
practices, and teacher profiles.

---

### Clinoa — Dental EMR & Scheduling — *live*
`Laravel · MySQL · RBAC · REST API · Flutter`

Owned a dental practice's full system end to end: the clinical admin site, the marketing site, and the REST APIs
behind separate patient and doctor Flutter apps. Designed the clinical data model and a single role-based
permission model enforced consistently across all three clients, so a doctor, a patient, and an administrator
each see only their own surface of the data.

---

### MyOffice — Legacy Platform Migration — *shipped*
`Laravel · CodeIgniter → Laravel · Eloquent`

A nested, multi-package CodeIgniter codebase where logic was shared across several internal projects — a naive
port would have silently broken the dependants. Mapped package boundaries first to separate genuinely shared
logic from copied code, re-implemented it in Laravel preserving behaviour, and held the API contract so the
Flutter client needed no release. Delivering it converted the contract into a full-time offer.

---

### Fishball ERP — Inventory & Manufacturing — *shipped*
`Laravel · MySQL · Figma`

Architected a manufacturing ERP spanning raw materials, storage, production, packaging, and delivery — data
models, supply-chain workflows, separate B2B and B2C apps, and a driver packaging-and-tracking system.

---

### SchoolSoftERP — Marks Module — *shipped*
`PHP · REST API · Firebase`

Owned the platform's flagship module end to end for two years: exam and question-paper management across
academic years, student marks and pivot tables, schema and foreign-key redesign, fresh REST APIs, the mobile
backend, the full admin frontend, and the platform's first Firebase push notifications. **Employee of the Month.**

---

### Rate Shopper — Shipping Rate Estimator — *shipped*
`PHP · Rate engine · Third-party carrier APIs`

Rebuilt a local freight-rate tool into a multi-carrier global shipping-rate estimator — roughly a **75% lift**
in the client's transaction volume.

---

### AI Agent + Jira Integration — *prototype*
`Python · AI agent patterns · Jira API`

Automated issue workflows using AI agent patterns — classification, tool-calling, and structured output — to cut
manual triage. Paired with a Python support-agent prototype built around clean OOP design rather than
prompt-only behaviour.

---

## Skills

| | |
| --- | --- |
| **Languages** | PHP, JavaScript (ES6+), Python, TypeScript *(learning)* |
| **Frameworks** | Laravel, CodeIgniter, Symfony, Node.js, Express.js, Flutter, React / Next.js *(learning)*, FastAPI *(in progress)* |
| **Databases & Data** | MySQL, Eloquent ORM, schema design, query optimisation, indexing, migrations, data integrity |
| **APIs & Security** | REST API design, RBAC, authentication & authorisation, token-based auth, webhooks, Firebase, third-party integrations |
| **Delivery & Ops** | Git, GitHub Actions, CI/CD, Railway, Cloudflare Workers, Confluence REST API, Linux, Jira, Agile / Scrum |
| **AI & Automation** | Claude, GitHub Copilot, Augment, Grok, AI agent workflows, Jira automation agent, Figma-to-HTML tooling |
| **Frontend** | HTML5, CSS3, Bootstrap, jQuery, responsive UI, Figma |

---

## Experience

| Role | Company | Period |
| --- | --- | --- |
| PHP / Full Stack Developer | Interconnected Pty Ltd — Remote (Australia) | 05/2025 – Present |
| PHP Developer | Crontus Pty Ltd — Remote (Australia) | 04/2024 – 04/2025 |
| Web Developer | MRN Technologies Pvt. Ltd. — India | 06/2022 – 04/2024 |
| Career break & other roles | Maternity break · Freelance tutor · Airmath (AIRM) mobile app · Process Executive, Arxt Labs Pvt. Ltd., Bangalore | 10/2020 – 06/2022 |
| Software Engineer | eSales Software Solutions LLP — India | 06/2018 – 10/2020 |

**Education** — B.Tech, Biomedical Engineering, Rajiv Gandhi College of Engineering & Technology, Puducherry (2014 – 2018)
**Languages** — English (professional) · Tamil (native)

---

## This repository

A static site, no build step — open `index.html` directly or serve the folder.

| File | Purpose |
| --- | --- |
| `index.html` | Portfolio landing page — about, experience, selected work, skills |
| `resume.html` | One-page résumé, print-friendly (⌘/Ctrl + P → Save as PDF) |
| `cv.html` | Detailed CV with full experience and project deep-dives, print-friendly |

Both document pages are styled for print, so saving either to PDF from the browser produces a clean,
attachable file.

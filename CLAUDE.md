# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **static HTML website** for Wanzul Hosting Enterprise. There are no build tools, package managers, or frameworks. All CSS is embedded inline in each HTML file.

## Files

- `index.html` — Homepage with hero, services, tech stack, clients, and footer
- `privacy-policy.html`, `terms-of-service.html`, `refund-policy.html` — Legal pages
- `images/` — Logo, tech icons, and client screenshots
- `Dockerfile` — Nginx-based image for Coolify/Dokploy Dockerfile deployments
- `DEPLOY.md` — Deployment instructions

## Design System

All four HTML files contain **duplicate embedded CSS** using the same design tokens. Changing the theme, typography, or layout requires updating the `<style>` block in **every file**. Key shared elements:

- CSS custom properties (`:root`) for dark-first theme with light mode override via `data-theme` attribute
- Fonts: Plus Jakarta Sans (headings), Manrope (body), JetBrains Mono (technical text)
- Theme switcher stores preference in localStorage key `wanzul-theme`
- All pages share identical header, theme switcher, company block, and footer styling

## Development

There is **no build step**. To preview changes, open any HTML file directly in a browser:

```bash
open index.html
```

Or serve locally:

```bash
python3 -m http.server 8000
```

## Deployment

The site is deployed as a **static site** on Coolify or Dokploy. See `DEPLOY.md` for detailed steps. Two options:

1. **Static build pack** (recommended) — No build step; Nginx serves files from repo root
2. **Dockerfile build pack** — Uses the included `Dockerfile` with nginx:alpine

Pushing to `main` triggers auto-deployment via GitHub webhook.

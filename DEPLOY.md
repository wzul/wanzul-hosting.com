# Deploying to Coolify from GitHub

This repo is a static site (HTML, CSS, images). You can deploy it to [Coolify](https://coolify.io) using GitHub in two ways.

## Prerequisites

- Push this repository to **GitHub** (public or private).
- A Coolify instance with GitHub connected (GitHub App or Deploy Key for private repos).

---

## Option A: Static build pack (recommended)

1. In **Coolify**, open your project and click **Create New Resource**.
2. **Repository**
   - Public: choose **Public Repository** and paste your repo URL (e.g. `https://github.com/your-username/wanzul-hosting.com`).
   - Private: use **GitHub App** or **Deploy Key** and select the repo.
3. **Build pack**
   - Click the build pack dropdown (e.g. Nixpacks) and choose **Static**.
4. **Base directory**
   - Static files are in the repo root, so set: **`/`**
5. **Web server**
   - Nginx is the default; leave as is.
6. **Domain**
   - Enter your domain (e.g. `wanzul-hosting.com`). Add more separated by commas if needed.
7. Click **Deploy**.

Deployment usually finishes in under a minute. Visit your domain to confirm.

---

## Option B: Dockerfile build pack

If you prefer to use the included Dockerfile:

1. Create a new resource and connect the same GitHub repo.
2. **Build pack**: choose **Dockerfile**.
3. **Dockerfile location**: leave default (e.g. `Dockerfile` in repo root).
4. Set your **domain** and **Deploy**.

The `Dockerfile` in this repo copies all files into an nginx image and serves them on port 80.

---

## Auto-deploy on push

- **GitHub App**: Coolify can deploy on every push to the branch you configured.
- **Webhooks**: In Coolify, enable webhooks for the resource and (if needed) add the webhook URL in your GitHub repo **Settings → Webhooks**.

After this, pushing to the connected branch will trigger a new deployment.

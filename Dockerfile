# Serve the static site with nginx (for Coolify Dockerfile build pack)
FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80

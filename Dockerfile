# ── STAGE: Use a lightweight nginx web server ──────────────────────────────
# WHY nginx? It's the industry standard for serving static HTML files.
# "alpine" means the smallest possible Linux image (~5MB vs ~150MB full).
FROM nginx:alpine

# WHY COPY? We take our index.html from our repo and place it inside
# the container at the exact folder nginx expects to serve files from.
COPY index.html /usr/share/nginx/html/index.html

# WHY EXPOSE 80? We're telling Docker "this container listens on port 80"
# (the default HTTP port). Azure will forward internet traffic here.
EXPOSE 80

# nginx starts automatically — no CMD needed for this base image.
FROM nginx:1.29.3-alpine-slim

COPY dist/ /usr/share/nginx/html

HEALTHCHECK CMD wget -q0- http://127.0.0.1/ || exit 1

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

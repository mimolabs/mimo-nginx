FROM nginx:alpine

# RUN \
#   mv nginx.conf /etc/nginx/nginx.conf

COPY mimo-api.conf /etc/nginx/sites-enabled/api.conf
COPY mimo-dashboard.conf /etc/nginx/sites-enabled/dashboard.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

# CMD ['nginx', '-c', '/etc/nginx/nginx.conf']
# CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]

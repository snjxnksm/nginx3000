FROM nginx:alpine

# nginx.conf を変更
RUN echo "server { \
  listen 3000; \
  server_name localhost; \
  location / { \
    return 200 'Hello, world!'; \
  } \
}" > /etc/nginx/conf.d/default.conf

# Docker コンテナを実行
CMD ["nginx", "-g", "daemon off;"]

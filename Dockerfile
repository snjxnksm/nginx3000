FROM nginx:alpine

# default.conf をコピーする
COPY default.conf /etc/nginx/conf.d/

# Docker コンテナを実行
CMD ["nginx", "-g", "daemon off;"]

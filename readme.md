# image 作成手順

ビルドとデプロイ手順

試しに動かす場合はこちら

```
docker build -t nginx-3000 .
docker run -d -p 3000:3000 nginx-3000
```

コマンド例は、aws ecrのコンソールで出力される

## 実行例

```
Works! 23-09-28 16:08:35 nginx3000 $ docker build -t nginx-3000 .
[+] Building 5.4s (6/6) FINISHED                                                                                                                                                                                                            docker:desktop-linux
 => [internal] load .dockerignore                                                                                                                                                                                                                           0.1s
 => => transferring context: 2B                                                                                                                                                                                                                             0.0s
 => [internal] load build definition from Dockerfile                                                                                                                                                                                                        0.1s
 => => transferring dockerfile: 306B                                                                                                                                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/nginx:alpine                                                                                                                                                                                             5.2s
 => [1/2] FROM docker.io/library/nginx:alpine@sha256:16164a43b5faec40adb521e98272edc528e74f31c1352719132b8f7e53418d70                                                                                                                                       0.0s
 => CACHED [2/2] RUN echo "server {   listen 3000;   server_name localhost;   location / {     return 200 'Hello, world!';   } }" > /etc/nginx/conf.d/default.conf                                                                                          0.0s
 => exporting to image                                                                                                                                                                                                                                      0.0s
 => => exporting layers                                                                                                                                                                                                                                     0.0s
 => => writing image sha256:82390e9f9a60064f5b665109c38d5afa2eeca510338afa121a0a379606adda15                                                                                                                                                                0.0s
 => => naming to docker.io/library/nginx-3000                                                                                                                                                                                                               0.0s

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview
Works! 23-09-28 16:09:07 nginx3000 $ docker run -d -p 8080:3000 nginx-3000
992cd664fdd47cedf7f75ca0ccbe89c626f9f93b2714b0a19abd07d93223cb3d
Works! 23-09-28 16:09:19 nginx3000 $ 
Works! 23-09-28 16:09:20 nginx3000 $ 
Works! 23-09-28 16:09:21 nginx3000 $ curl http://localhost:3000/
Hello, world!%                                                                                                                                                                                                                                                   Works! 23-09-28 16:09:36 nginx3000 $ 
```
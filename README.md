# Docker image of Nginx Proxy 



Simple HTTP Proxy 


## Run

```bash
$ docker run \
    --rm \
    --name nginx-basic-auth-proxy \
    -p 8080:8080 \
    -e PROXY_PASS=https://www.google.com \
    -e SERVER_NAME=proxy.dtan4.net \
    -e PORT=8080 \
    viveklanjekar/nginx-proxy:latest
```

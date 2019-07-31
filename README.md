
Simple version based on [this](https://docs.docker.com/registry/recipes/nginx/)

### Build 

`docker build -t nginx-proxy-artifactory .`

### Run 

```
docker run -d --name nginx-proxy-art \
-e SERVER_NAME=artifactory \
-e PROXY_PASS="https://artifactory:8080" \
-e JFROG_API_KEY="???" \
-p 80:80 nginx-proxy-artifactory
```
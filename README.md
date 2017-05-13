# Docker multi-stage builds demo 



## One single Dockerfile to build springboot app

```
docker build -f Dockerfile.build -t springboot-app-with-build .
```



## Multi-stage builds Dockerfile

```
docker build -t springboot-app-with-build .
```



# Size difference

```
REPOSITORY                  TAG                 IMAGE ID            CREATED              SIZE
springboot-app-with-build   latest              8523c91e4fe0        About a minute ago   828MB
springboot-app              latest              bbd6b7476ad9        7 minutes ago        137MB
```

With multi-stage builds, we saved nearly 700M in image size.
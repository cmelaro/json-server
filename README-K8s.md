# Dockerized [json-server](https://github.com/typicode/json-server) in K8s

## Image availability in repository

```shell
docker buildx build --platform linux/amd64,linux/arm64 -t cmelaro/json-server:v1-beta --push .
```

***Note:*** *make sure the repos is publicly accessible or K8s had a pull secret to allow use*

## K8s Deployment

```shell
kubectl create configmap json-server \
    --from-file=data/db.json \
    --from-file=public/test.html

kubectl apply -f deploy.yaml
```

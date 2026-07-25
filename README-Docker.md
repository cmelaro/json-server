# Dockerized [json-server](https://github.com/typicode/json-server)

## Build

```shell
docker build -t json-server:v1-beta .
```

## Run

```shell
docker run -it --rm --mount type=bind,src=./data/db.json,dst=/data/db.json --mount type=bind,src=./public,dst=/json-server/public -p 8000:8000 json-server:v1-beta
```

## Test

```shell
curl localhost:8000/posts
curl localhost:8000/json-logo.png --output foo.png
```

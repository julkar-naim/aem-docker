## Build an Image
- `docker build -t ghcr.io/mahedisabuj/aem-docker/aem-author:6.5.16 .`

## Create Author Container
- `docker-compose up`

## Login to Container
- `docker exec -it aem-author bash`

## Login to GitHub Registry
- `docker login ghcr.io` # Username and Password Token

## Push to GitHub Registry
- `docker push ghcr.io/mahedisabuj/aem-docker/aem-author:6.5.16` # Need write:packages Permission to Password Token

## Multi Platform Support
- `docker buildx create --name aem-builder`
- `docker buildx use aem-builder`
- `docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/mahedisabuj/aem-docker/aem-author:6.5.16 --push .`

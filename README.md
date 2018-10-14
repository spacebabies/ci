# CI image for Rails

Use this to run Continuous Integration.

## Use every day

### Bitbucket Pipelines

See `bitbucket_pipelines.yml` included in this repo.

## Dev on this thing

### Build and push to Docker hub

``` shell
docker build -t spacebabies/ci-2.4.1:latest .
docker push spacebabies/ci-2.4.1:latest
```

## Questions?

info@spacebabies.nl
https://www.spacebabies.nl

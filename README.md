# CI image for Rails

Use this to run Continuous Integration.

## Use every day

### Bitbucket Pipelines

See `bitbucket_pipelines.yml` included in this repo.

You will need some environment variables.

*Project Environment Variables*

`REDEPLOYMENT_URL` - the production Cloud 66 redeployment hook
`REDEPLOYMENT_URL_STAGING` - same for staging (if applicable)
`SENTRY_AUTH_TOKEN` - Maybe this should move one level up
`SENTRY_PROJECT` - the name of the project in Sentry

*Account Variables*

`SENTRY_ORG` - should be set to `space-babies`

## Dev on this thing

### Build and push to Docker hub

``` shell
docker build -t spacebabies/ci-2.4.1:latest .
docker push spacebabies/ci-2.4.1:latest
```

## Questions?

info@spacebabies.nl
https://www.spacebabies.nl

# CI image for Rails

Use this to run Continuous Integration.

These examples use `2.4.1` for the Ruby version, which has the corresponding
Dockerfile. Change it to the Ruby version used in your project.

## Configure for a project

The examples build and deploy to staging and production. Add or remove
environments to match yours.

1. Copy `bitbucket_pipelines.yml` to the project root.
2. Set the project environment variables in Bitbucket (see below).
3. Enable Pipelines in Bitbucket

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
docker build -t spacebabies/ci-2.4.1:latest 2.4.1
docker push spacebabies/ci-2.4.1:latest
```

## Questions?

info@spacebabies.nl
https://www.spacebabies.nl

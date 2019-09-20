# CI image for Rails

Use this to run Continuous Integration.

These examples use `2.4.1` for the Ruby version, which has the corresponding
Dockerfile. Change it to the Ruby version used in your project.

## Configure for a project

The examples build and deploy to staging and production. Add or remove
environments to match yours.

1. Copy `bitbucket_pipelines.yml` to the project root.
2. Set the correct Ruby version in it.
3. Commit and push so that Bitbucket knows what to do.
4. Enable Pipelines in the project.
5. Set the project environment variables in Bitbucket (see below).

## Use every day

### Bitbucket Pipelines

See `bitbucket_pipelines.yml` included in this repo.

You will need some environment variables.

**Repository Environment Variables**

- [ ] `SENTRY_PROJECT` - the name of the project in Sentry

**Deployment Environment Variables**

_When deployed to Cloud 66:_

- [ ] `REDEPLOYMENT_HOOK` - the production Cloud 66 redeployment hook
- [ ] `STAGING_REDEPLOYMENT_HOOK` - same for staging (if applicable)

**Account Variables**

- [ ] `SENTRY_AUTH_TOKEN` - Sentry authentication token
- [ ] `SENTRY_ORG` - should be set to `space-babies`

## Dev on this thing

For an entirely new Ruby version, copy one of the existing directories.
Then build the image and/or make changes to the Dockerfile so that it builds
cleanly and has everything required.

### Build and push to Docker hub

Create a repo on Docker Hub if it doesn't exist already.

To publish an image:

``` shell
docker build -t spacebabies/ci-2.4.1:latest 2.4.1
docker push spacebabies/ci-2.4.1:latest
```

## Questions?

info@spacebabies.nl
https://www.spacebabies.nl

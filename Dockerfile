FROM ruby:2.4.1

MAINTAINER Space Babies <info@spacebabies.nl>
LABEL description="Continuous Integration of our Rails apps"

ENV SENTRY_DISABLE_UPDATE_CHECK true

RUN apt-get update; \
    apt-get install --yes --no-install-recommends \
            imagemagick \
            nodejs \
            pdftk

RUN if ! [ -x "$(command -v sentry-cli)" ]; then \
  curl -sL https://sentry.io/get-cli/ | bash; \
fi


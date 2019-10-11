FROM ruby:2.4.4

MAINTAINER Space Babies <info@spacebabies.nl>

LABEL description="Continuous Integration of our Rails apps"

ENV LANG C.UTF-8

RUN apt-get update && apt-get install --yes apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
        chromium \
        clamav \
        clamav-daemon \
        httpie \
        imagemagick \
        libvips \
        nodejs \
        pdftk \
        webp \
        yarn && \
    rm -rf /var/lib/apt/lists/*

RUN curl -sL https://sentry.io/get-cli/ | bash

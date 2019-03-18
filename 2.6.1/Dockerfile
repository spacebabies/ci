FROM ruby:2.6.1

MAINTAINER Space Babies <info@spacebabies.nl>
LABEL description="Continuous Integration of our Rails apps"

RUN apt-get update && apt-get install --yes apt-transport-https

RUN apt-key \
  adv --no-tty --fetch-keys https://dl.google.com/linux/linux_signing_key.pub && \
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" \
  >> /etc/apt/sources.list.d/google.list

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -

RUN apt-get update; \
    apt-get install --yes --no-install-recommends \
        clamav \
        clamav-daemon \
        google-chrome-stable \
        httpie \
        imagemagick \
        libvips \
        nodejs \
        pdftk \
        webp \
        yarn

ENV LANG C.UTF-8

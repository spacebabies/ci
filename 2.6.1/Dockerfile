FROM ruby:2.6.1

MAINTAINER Space Babies <info@spacebabies.nl>
LABEL description="Continuous Integration of our Rails apps"

RUN apt-key \
  adv --no-tty --fetch-keys https://dl.google.com/linux/linux_signing_key.pub && \
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" \
  >> /etc/apt/sources.list.d/google.list

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get update; \
    apt-get install --yes --no-install-recommends \
            google-chrome-stable \
            httpie \
            imagemagick \
            libvips \
            nodejs \
            pdftk

ENV LANG C.UTF-8

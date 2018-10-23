FROM ruby:2.5.1

MAINTAINER Space Babies <info@spacebabies.nl>
LABEL description="Continuous Integration of our Rails apps"

ENV SENTRY_DISABLE_UPDATE_CHECK true

RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" \
      >> /etc/apt/sources.list.d/google.list

RUN apt-get update; \
    apt-get install --yes --no-install-recommends \
            google-chrome-stable \
            httpie \
            imagemagick \
            nodejs \
            pdftk

RUN if ! [ -x "$(command -v sentry-cli)" ]; then \
  curl -sL https://sentry.io/get-cli/ | bash; \
fi

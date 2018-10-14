FROM ruby:2.4.1

MAINTAINER Space Babies <info@spacebabies.nl>
LABEL description="Continuous Integration of our Rails apps"

RUN apt-get update; \
    apt-get install --yes --no-install-recommends \
            imagemagick \
            nodejs \
            pdftk

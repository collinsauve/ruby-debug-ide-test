FROM ruby:2.7.1-slim-buster

RUN addgroup --gid 2000 app && \
    adduser --system --home /home/app --uid 1000 --disabled-password --ingroup app app

WORKDIR /home/app
COPY --chown=1000:2000 . .
USER 1000:2000
ENV BUNDLE_APP_CONFIG=.bundle

RUN bundle config --global frozen 1 && \
    bundle config set deployment 'true' && \
    bundle install


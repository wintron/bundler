FROM ruby:alpine

RUN apk add --no-cache build-base
RUN gem update --system
RUN gem install bundler

ENTRYPOINT [ "bundle" ]
CMD [ "install", "--binstubs", ".bundle/binstubs", "--path", ".bundle" ]

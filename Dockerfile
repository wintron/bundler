FROM ruby:alpine

RUN gem update --system
RUN gem install bundler

ENTRYPOINT [ "bundle" ]
CMD [ "install" ]

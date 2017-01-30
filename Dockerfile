FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.6.0

RUN gem install bundler_bash_completion --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["complete_bundle_bash_command"]
CMD ["--help"]

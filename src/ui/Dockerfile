FROM ubuntu:16.04

ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292
ENV APP_HOME /app

WORKDIR $APP_HOME

RUN apt-get update -qq \
    && apt-get install -y ruby-full ruby-dev build-essential \
    && apt-get clean \
    && gem install bundler --no-ri --no-rdoc

ADD . $APP_HOME

RUN bundle install

CMD ["puma"]

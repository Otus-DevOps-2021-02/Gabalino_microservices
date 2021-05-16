FROM ruby:2.2-slim

ENV COMMENT_DATABASE_HOST comment_db
ENV COMMENT_DATABASE comments
ENV APP_HOME /app

WORKDIR $APP_HOME

RUN apt-get update -qq && \
    apt-get install -y build-essential && \
    apt-get clean 

ADD . $APP_HOME
RUN bundle install

CMD ["puma"]

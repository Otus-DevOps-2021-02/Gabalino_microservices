FROM ubuntu:18.04

# ENV DEBIAN_FRONTEND="noninteractive" 
# TZ="Europe/Moscow"

# RUN groupadd -r mongodb && useradd -r -g mongodb mongodb

RUN apt-get update -qq
RUN apt-get install wget gnupg -y 
# APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
# ln -T /bin/true /usr/bin/systemctl && apt-get update && apt-get install -y mongodb-org && rm /usr/bin/systemctl
RUN apt-get update -qq \
    && ln -s /bin/true /usr/bin/systemctl \
    && DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y mongodb-org ruby-full ruby-dev build-essential git \
    && rm /usr/bin/systemctl
RUN gem install bundler
RUN git clone -b monolith https://github.com/express42/reddit.git

COPY mongod.conf /etc/mongod.conf
COPY db_config /reddit/db_config
COPY start.sh /start.sh

RUN cd /reddit && rm Gemfile.lock && bundle install
RUN chmod 0777 /start.sh

CMD ["/start.sh"]

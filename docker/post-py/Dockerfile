FROM python:3.6-alpine

ENV POST_DATABASE_HOST post_db
ENV POST_DATABASE posts
ENV APP_HOME /app

WORKDIR $APP_HOME
ADD . $APP_HOME

RUN apk --no-cache --update add build-base && \
    pip install --upgrade pip && \
    pip install -r /app/requirements.txt && \
    apk del build-base

ENTRYPOINT ["python3", "post_app.py"]

export USER_NAME=gabalino # где username - ваш логин на Docker Hub
docker build -t $USER_NAME/prometheus . --no-cache
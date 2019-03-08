FROM python:latest

LABEL maintainer="succi0303@gmail.com"

RUN pip install wordcloud matplotlib

WORKDIR /usr/src

ENTRYPOINT ["wordcloud_cli"]

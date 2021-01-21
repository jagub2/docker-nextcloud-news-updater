FROM python:3.8.1-alpine3.11

RUN pip3 install nextcloud_news_updater==11.0.0

COPY docker_entrypoint.sh /
ENTRYPOINT ["/docker_entrypoint.sh"]

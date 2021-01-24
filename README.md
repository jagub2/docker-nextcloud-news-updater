# nextcloud-news-updater docker container

Docker image for running the [Nextcloud News Updater](https://github.com/nextcloud/news-updater). It installs updater by pip, in a Docker container. It can be configured via environment variables.

This is a mix of https://github.com/kressh/nextcloud-news-updater and https://github.com/shouptech/docker-nextcloud-news-updater

## Quickstart

```
$ docker run -d -e NEXTCLOUD_URL=https://nextcloud.example.com/nextcloud \
                -e NEXTCLOUD_ADMIN_USER=admin \
                -e NEXTCLOUD_ADMIN_PASSWORD=password \
                -e NEXTCLOUD_ADDITIONAL_ARGS="--apilevel v1-2" \
                nextcloud-news-updater
```

It's also possible to use Nextcloud volume:
```
$ docker run -d -e NEXTCLOUD_URL=https://nextcloud.example.com/nextcloud \
                -e NEXTCLOUD_ADMIN_USER=admin \
                -e NEXTCLOUD_ADMIN_PASSWORD=password \
                -v /var/www/nextcloud:/nextcloud \
                nextcloud-news-updater /nextcloud
```

You need to build a image, though.

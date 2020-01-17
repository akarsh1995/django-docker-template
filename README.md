# Docker django setup with postgres and nginx-certbot

Edit the .env file present in the root directory as per your use case.

This docker template is highly inspired by 
[lukin0110/docker-django-boilerplate](https://github.com/lukin0110/docker-django-boilerplate)


```shell script
$ docker-compose build
$ docker-compose up -d postgres
$ docker-compose run app setup_db
```

Docker run app after setting up db

```shell script
# for uwsgi socket mode on port 8000
$ docker-compose up app
```

Additionally for nginx with certbot.
Thanks to [staticfloat/docker-nginx-certbot](https://github.com/staticfloat/docker-nginx-certbot)
```shell script
$ docker-compose up nginx
```

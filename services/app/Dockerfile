FROM python:3.8.1-alpine

ENV PYTHONUNBUFFERED 1


WORKDIR /usr/src/app

EXPOSE 8000 8001

RUN apk add --no-cache --virtual .build-deps \
    ca-certificates gcc g++ bash linux-headers musl-dev \
    curl-dev libressl-dev git \
    postgresql-dev postgresql-client gettext

COPY ./app/Pipfile* ./
RUN pip install pipenv

RUN pipenv sync
ENV PYTHONPATH $PATH:/usr/src
COPY ./app .
COPY ./services/config/uwsgi/* /deployment/

CMD ["uwsgi"]

COPY ./services/app/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod a+x /usr/local/bin/entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
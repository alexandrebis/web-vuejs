FROM ubuntu:18.04

LABEL LAURENT Louis

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \ 
    && apt-get -y -qqq install apt-utils \
    && apt-get -y -qqq install curl dirmngr apt-transport-https lsb-release ca-certificates \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash \
    && apt-get update \
    && apt-get -y -qqq install nodejs \
    && apt-get install -y -qqq apache2

ADD . /code

WORKDIR /code

RUN npm clean-install

VOLUME [ "/etc/apache2/", "/code" ]

EXPOSE 8000
EXPOSE 80

CMD [ "chmod", "760", "./starter.sh" ]
ENTRYPOINT [ "./starter.sh" ]
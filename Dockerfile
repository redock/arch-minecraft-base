FROM redock/arch-java:openjdk7-headless-latest

MAINTAINER renlar <renlar@liddev.com>

RUN pacman --noconfirm -S unzip

RUN mkdir /var/minecraft

RUN groupadd minecraft && useradd -g minecraft minecraft && chown minecraft:minecraft /var/minecraft

WORKDIR /var/minecraft

USER minecraft

EXPOSE 25565

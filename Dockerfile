FROM python:latest

MAINTAINER Krangence <matt@krangence.uk>

RUN apt-get update && apt-get install -y --no-install-recommends \
  git \
  libav-tools \
  libffi-dev \
  libopus-dev \
  libssl-dev \
  unzip \
&& apt-get clean

RUN pip install \
  git+https://github.com/Cog-Creators/Red-DiscordBot@V3/develop#egg=Red-DiscordBot

VOLUME /app/data
WORKDIR /app

CMD ["redbot-launcher"]

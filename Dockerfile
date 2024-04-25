FROM ubuntu:24.04

ENV DOMAIN_NAME=openreplay.mycompany.com

RUN apt update -y && apt install -y adduser sudo wget curl git
RUN apt clean

RUN addgroup --system --gid 1001 open


EXPOSE 80
ENV PORT 80

#RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/openreplay/openreplay/main/scripts/docker-compose/docker-install.sh)"
CMD /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/openreplay/openreplay/main/scripts/docker-compose/docker-install.sh)"

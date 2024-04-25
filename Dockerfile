FROM ubuntu:24.04

#ENV 

#COPY .env .env
ENV DOMAIN_NAME=openreplay.mycompany.com

RUN apt update -y && apt install -y adduser sudo wget curl git
RUN apt clean

RUN addgroup --system --gid 1001 open


#RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/openreplay/openreplay/main/scripts/docker-compose/docker-install.sh)"
CMD /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/openreplay/openreplay/main/scripts/docker-compose/docker-install.sh)"

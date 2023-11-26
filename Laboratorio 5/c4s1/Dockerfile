FROM ubuntu:20.10

COPY entrypoint.sh .
COPY sources.list /etc/apt/

RUN apt-get update
RUN apt-get install tcpdump -y

# Crear usuario
ARG USER=test
ARG PASS="test"
RUN useradd -m -s /bin/bash $USER && echo "$USER:$PASS" | chpasswd

# Instalar SSH
RUN apt-get install -y openssh-client openssh-server

ENTRYPOINT ["./entrypoint.sh"]
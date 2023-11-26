FROM ubuntu:16.10

COPY sources.list /etc/apt/

RUN apt-get update
RUN apt-get install -y openssh-client openssh-server

# Mantener el contenedor en ejecución
ENTRYPOINT ["tail", "-f", "/dev/null"]
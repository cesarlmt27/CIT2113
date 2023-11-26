FROM ubuntu:20.10

COPY sources.list /etc/apt/

RUN apt-get update
RUN apt-get install wget make -y

# Instalar dependencias para compilar OpenSSH
RUN apt-get install build-essential -y
RUN apt-get install libc6-dev -y
RUN apt-get install libssl-dev -y
RUN apt-get install zlib1g-dev

# Descargar OpenSSH
RUN wget https://cloudflare.cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.3p1.tar.gz
RUN tar -xvf openssh-8.3p1.tar.gz

WORKDIR /openssh-8.3p1

# Modificar el archivo version.h para cambiar versión del cliente SSH
RUN sed -i 's/#define SSH_VERSION\t"OpenSSH_.*"/#define SSH_VERSION\t"OpenSSH_?"/' version.h

RUN ./configure
RUN make

# Mantener el contenedor en ejecución
ENTRYPOINT ["tail", "-f", "/dev/null"]
# Laboratorio 5

## Información
### URLs
- [Repositories for old Ubuntu versions](https://superuser.com/questions/339537/where-can-i-get-the-repositories-for-old-ubuntu-versions).

- [EOLUpgrades](https://help.ubuntu.com/community/EOLUpgrades).

- [Ubuntu version history](https://en.wikipedia.org/wiki/Ubuntu_version_history).

- [Set interface name when creating a new network](https://stackoverflow.com/questions/43981224/docker-how-to-set-iface-name-when-creating-a-new-network).

- [Understanding TCP Sequence and Acknowledgment Numbers](https://packetlife.net/blog/2010/jun/7/understanding-tcp-sequence-acknowledgment-numbers/).

- [Portable OpenSSH](https://github.com/openssh/openssh-portable).

- [OpenSSH crypto configuration](https://ubuntu.com/server/docs/openssh-crypto-configuration).

- [Algorithms supported by OpenSSH client](https://superuser.com/questions/868998/how-can-i-find-a-list-of-macs-ciphers-and-kexalgorithms-that-my-openssh-client).

- [OpenSSH daemon configuration file](https://man.openbsd.org/sshd_config).


### Update sources.list (old release)
Change `CODENAME` with the release code name.
```bash
## EOL upgrade sources.list
# Required
deb http://old-releases.ubuntu.com/ubuntu/ CODENAME main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ CODENAME-updates main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ CODENAME-security main restricted universe multiverse
```



## Docker
### Hacer imagen y ejecutar contenedor
```bash
docker build --tag 'ubuntu14' .
docker run --name ubuntu14 -it 'ubuntu14' bash
```


### [Listar contenedores con sus IP](https://gist.github.com/ipedrazas/2c93f6e74737d1f8a791)
```bash
docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Name }}' | sed 's/ \// /'
```


### [Obtener IP de contenedor](https://kodekloud.com/blog/get-docker-container-ip/)
```bash
docker inspect --format='{{.NetworkSettings.IPAddress}}' container_name_or_id
```



## Comandos adicionales
### [Conexión a servidor remoto SSH](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-to-connect-to-a-remote-server)
```bash
ssh test@c4s1
```


### Verificar creación de usuario
```bash
id test
```

```bash
grep test /etc/passwd
```


### Capturar tráfico de loopback con `tcpdump` y guardar en `.pcapng`
```bash
tcpdump -i lo -w c4_s1.pcapng
```
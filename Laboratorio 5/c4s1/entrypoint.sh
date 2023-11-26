#!/bin/bash

# Iniciar el servicio SSH
service ssh start

# Mantener el contenedor en ejecución
tail -f /dev/null
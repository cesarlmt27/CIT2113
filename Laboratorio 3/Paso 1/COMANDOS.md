# Comandos del paso 1

## Comandos [airmon-ng](https://aircrack-ng.org/doku.php?id=airmon-ng)
Habilitar modo monitor:
```bash
sudo airmon-ng check kill
sudo airmon-ng start wlx502b73d4229e
```

Mostrar todas las interfaces inalámbricas:
```bash
iwconfig
```

Deshabilitar modo monitor:
```bash
sudo airmon-ng stop wlx502b73d4229e
sudo NetworkManager
```




## Comandos [airodump-ng](https://aircrack-ng.org/doku.php?id=airodump-ng)
Capturar tráfico:
```bash
sudo airodump-ng --encrypt WEP --channel 3 --write lab3_capture --output-format pcap wlx502b73d4229e
```




## Comandos [aircrack-ng](https://aircrack-ng.org/doku.php?id=aircrack-ng)
Ataque por defecto:
```bash
aircrack-ng lab3_capture-01.cap
```

Tiempo de duración del ataque por defecto:
```bash
time aircrack-ng lab3_capture-01.cap > /dev/null
```




## Comandos [airdecap-ng](https://aircrack-ng.org/doku.php?id=airdecap-ng)
Desencriptar archivo de captura con la llave obtenida:
```bash
airdecap-ng -w 12:34:56:78:90 lab3_capture-01.cap
```
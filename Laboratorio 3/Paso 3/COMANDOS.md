# Comandos del paso 3
[Cracking WPA/WPA2 with hashcat](https://hashcat.net/wiki/doku.php?id=cracking_wpawpa2)



## Comandos [hcxtools](https://github.com/ZerBea/hcxtools)
[hcxpcapngtool - hcx tools set](https://manpages.ubuntu.com/manpages/jammy/man1/hcxpcapngtool.1.html)

Convertir `.pcap` a `.hc22000`:
```bash
hcxpcapngtool -o handshake.hc22000 handshake.pcap
```




## Comandos [hashcat](https://hashcat.net/wiki/doku.php?id=hashcat)
Con potfile:
```bash
hashcat --attack-mode 0 --hash-type 22000 --opencl-device-types 2 --potfile-path=my.pot handshake.hc22000 rockyou_mod.dic
```

Sin potfile:
```bash
hashcat --attack-mode 0 --hash-type 22000 --opencl-device-types 2 --potfile-disable handshake.hc22000 rockyou_mod.dic
```




## Comandos [aircrack-ng](https://aircrack-ng.org/doku.php?id=aircrack-ng)
```bash
aircrack-ng -w rockyou_mod.dic handshake.pcap
```
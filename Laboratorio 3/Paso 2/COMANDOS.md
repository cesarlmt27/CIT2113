# Comandos del paso 2

## Comando para modificar [diccionario original](https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt)
```bash
grep -a '^[a-zA-Z]' rockyou.txt | sed -e 's/^\(.\)/\U\1/; s/$/0/' > rockyou_mod.dic
```
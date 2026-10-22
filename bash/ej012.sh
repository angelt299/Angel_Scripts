#!/bin/bash
#Muestra las 10 primeras y las 10 últimas líneas de /etc/passwd, con un mensaje separador entre ambas.

echo "Primeras 10 líneas de /etc/passwd:"
head -n 10 /etc/passwd
echo "-----------------------------------"
echo "Últimas 10 líneas de /etc/passwd:"
tail -n 10 /etc/passwd
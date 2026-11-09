#!/bin/bash
#Muestra únicamente la dirección IP principal de la máquina filtrando la salida de ip a (o hostname -I).
ip a | grep -E 'inet [0-9]' | awk '{print $2}' | head -1
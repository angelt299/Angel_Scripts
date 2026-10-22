#!/bin/bash
#Muestra el nombre de la máquina, el número de usuarios conectados y la versión del kernel.
hostname
who | wc -l
uname -r
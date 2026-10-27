#!/bin/bash
#Muestra la línea de /etc/passwd correspondiente al usuario con el UID más alto (ordena numéricamente por el campo 3).
sort -t: -k3,3n /etc/passwd | tail -1

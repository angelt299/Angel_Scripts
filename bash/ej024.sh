#!/bin/bash
#Muestra los usuarios de /etc/passwd que utilizan bash como shell, y cuántos son.
grep "bash$" /etc/passwd | cut -d: -f1
echo "Número de usuarios que utilizan bash: $(grep "bash$" /etc/passwd | wc -l)"
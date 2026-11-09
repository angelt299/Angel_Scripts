#!/bin/bash
# Genera un informe con el nombre de la máquina, la lista de usuarios humanos y su total, mostrándolo por pantalla y guardándolo a la vez en informe.txt con tee.

# 1. Almacenar los usuarios humanos (UID >= 1000, excluyendo 'nobody')
usuarios=$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd)
total=$(echo "$usuarios" | grep -c .)

# 2. Agrupar la salida completa para enviarla a 'tee' en un solo paso
{
  echo "Nombre de la máquina: $(hostname)"
  echo "Usuarios humanos:"
  echo "$usuarios"
  echo "Total de usuarios humanos: $total"
} | tee informe.txt
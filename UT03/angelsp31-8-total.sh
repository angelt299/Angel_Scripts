#!/bin/bash
# Copia de seguridad total de /home
# Fuerza el mes en español, porque cron y anacron ejecutan con un entorno mínimo
export LC_TIME=es_ES.UTF-8
DESTINO="/bacangel"
NOMBRE="CopTot-$(date +%B-%Y)"

# Marca de tiempo de la última copia total: las diferenciales se comparan con ella
touch "$DESTINO/.marca_total"

tar -cjf "$DESTINO/$NOMBRE.tar.bz2" /home 2>/dev/null
echo "Copia total creada: $NOMBRE.tar.bz2"
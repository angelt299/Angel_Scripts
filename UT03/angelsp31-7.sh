#!/bin/bash
# angelsp31-7.sh
# Comprueba la ocupación de cada partición y registra las que superan el umbral.

# Umbral en %: por defecto 80, pero se puede cambiar al ejecutarlo (./angelsp31-7.sh 1)
UMBRAL=${1:-80}

# Fichero de registro propio (ruta completa, porque cron no ejecuta desde el home)
REGISTRO="/home/angel/registro_disco.log"

# df lista las particiones reales (se excluyen tmpfs, devtmpfs, squashfs y overlay)
# tail quita la cabecera y el bucle lee la partición y su porcentaje de uso
df --output=source,pcent -x tmpfs -x devtmpfs -x squashfs -x overlay | tail -n +2 | while read -r particion uso; do

    # Quitamos el símbolo % para poder comparar números
    porcentaje=${uso%\%}

    # Si supera el umbral, añadimos una línea al registro con fecha, hora, partición y porcentaje
    if [ "$porcentaje" -gt "$UMBRAL" ]; then
        echo "$(date '+%d/%m/%Y %H:%M:%S') - Particion: $particion - Uso: $uso" >> "$REGISTRO"
    fi

done
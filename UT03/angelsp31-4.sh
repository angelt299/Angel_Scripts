#!/bin/bash
# angelsp31-4.sh
# Desinstala los programas indicados en programas.txt (un programa por línea).

# Directorio del propio script, para encontrar programas.txt aunque se ejecute desde otro sitio
DIR=$(dirname "$0")
FICHERO="$DIR/programas.txt"

# Leemos el fichero línea a línea (la parte "|| [ -n ... ]" evita perder la última línea si no acaba en salto de línea)
while read -r programa || [ -n "$programa" ]; do

    # Ignoramos las líneas vacías
    [ -z "$programa" ] && continue

    # Comprobamos si el programa está instalado (estado "ii" en dpkg)
    if dpkg -l "$programa" 2>/dev/null | grep -q "^ii"; then
        echo "Desinstalando $programa..."
        apt purge -y "$programa"
    else
        # No está instalado: avisamos y seguimos con el siguiente
        echo "AVISO: $programa no está instalado. Paso al siguiente."
    fi

done < "$FICHERO"

echo "Proceso terminado."
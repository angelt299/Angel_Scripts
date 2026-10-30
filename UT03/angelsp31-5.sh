#!/bin/bash
# angelsp31-5.sh
# Revisa los archivos de /var/log y genera un informe con las líneas que contienen "error" o "fail".

# Fichero donde se guardará el informe (en el directorio desde el que se ejecuta el script)
INFORME="informe_errores.txt"

# Cabecera del informe (el > crea el fichero de nuevo en cada ejecución)
echo "INFORME DE ERRORES - $(date '+%d/%m/%Y %H:%M:%S')" > "$INFORME"

# Recorremos todos los archivos de /var/log (incluidas sus subcarpetas)
find /var/log -type f 2>/dev/null | while read -r archivo; do

    # Buscamos las líneas con "error" o "fail":
    #   -i ignora mayúsculas/minúsculas, -I ignora los archivos binarios,
    #   2>/dev/null oculta los errores de los archivos sin permiso de lectura
    lineas=$(grep -i -I -E "error|fail" "$archivo" 2>/dev/null)

    # Si el archivo tiene coincidencias, añadimos al informe un bloque con su nombre
    if [ -n "$lineas" ]; then
        echo "" >> "$INFORME"
        echo "==================================================" >> "$INFORME"
        echo "ARCHIVO: $archivo" >> "$INFORME"
        echo "==================================================" >> "$INFORME"
        echo "$lineas" >> "$INFORME"
    fi

done

echo "Informe generado en $INFORME"
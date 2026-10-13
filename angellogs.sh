#!/bin/bash

# Comprobar que se recibe exactamente un parámetro
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 [emergente|alerta|crítico|error|advertencia|noticia|información|depuración]" >&2
    exit 1
fi

# Traducir el nivel de severidad a su prioridad numérica
case "$1" in
    emergente)          prioridad=0 ;;
    alerta)             prioridad=1 ;;
    crítico|critico)    prioridad=2 ;;
    error)              prioridad=3 ;;
    advertencia)        prioridad=4 ;;
    noticia)            prioridad=5 ;;
    información|informacion) prioridad=6 ;;
    depuración|depuracion)   prioridad=7 ;;
    *)
        echo "Error: Nivel de severidad '$1' no válido." >&2
        exit 2
        ;;
esac

# Definir el inicio del mes y el archivo de salida
inicio_mes=$(date +%Y-%m-01)
archivo="$HOME/logs_${1}_$(date +%Y%m).txt"

# Obtener los registros de la prioridad exacta
registros=$(journalctl PRIORITY="$prioridad" --since "$inicio_mes" --no-pager)

# Contar los registros de esa prioridad durante el mes
cantidad=$(journalctl PRIORITY="$prioridad" --since "$inicio_mes" \
    --output=json --no-pager | awk 'END {print NR+0}')

# Guardar los registros en el directorio personal
printf '%s\n' "$registros" > "$archivo"

# Mostrar el resultado
echo "Severidad: $1 (prioridad $prioridad)"
echo "Registros de este mes: $cantidad"
echo "Archivo generado: $archivo"
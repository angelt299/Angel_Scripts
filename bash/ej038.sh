#!/bin/bash
# Pide una palabra y un fichero, y muestra cuántas líneas del fichero la contienen y cuáles son (con número de línea).

read -p "Introduce una palabra: " palabra
read -p "Introduce el nombre del fichero: " fichero

# 1. Comprobar si el archivo existe antes de procesarlo
if [ ! -f "$fichero" ]; then
  echo "Error: El archivo '$fichero' no existe o no es un fichero regular."
  exit 1
fi

# 2. Guardar las líneas coincidentes numeradas en una variable
coincidencias=$(grep -n "$palabra" "$fichero")

# 3. Mostrar el recuento y el listado de líneas
if [ -n "$coincidencias" ]; then
  total=$(echo "$coincidencias" | wc -l)
  echo "Total de líneas que contienen '$palabra': $total"
  echo "Detalle de las líneas:"
  echo "$coincidencias"
else
  echo "No se encontraron líneas que contengan la palabra '$palabra' en el archivo '$fichero'."
fi
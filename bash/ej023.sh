#!/bin/bash
#Pide el nombre de un fichero y muestra por separado su número de líneas, de palabras y de caracteres.
read -p "Introduce el nombre del fichero: " fichero
if [[ -f "$fichero" ]]; then
    lineas=$(wc -l < "$fichero")
    palabras=$(wc -w < "$fichero")
    caracteres=$(wc -m < "$fichero")
    echo "Número de líneas: $lineas"
    echo "Número de palabras: $palabras"
    echo "Número de caracteres: $caracteres"
else
    echo "El fichero '$fichero' no existe."
fi
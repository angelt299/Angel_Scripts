#!/bin/bash
#Pide el nombre de un fichero y muestra cuántas vocales contiene en total (usa tr y wc).
read -p "Introduce el nombre del fichero: " fichero
vocales=$(tr -cd 'aeiouAEIOU' < "$fichero" | wc -c)
echo "El fichero $fichero contiene $vocales vocales."
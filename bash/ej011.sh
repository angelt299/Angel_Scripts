#!/bin/bash
#Pide el nombre de un fichero y muestra su tamaño legible y el tipo de contenido (ls -lh y file).
read -p "Introduce el nombre del fichero: " FICHERO
echo "Tamaño y tipo de contenido de $FICHERO:"
ls -lh "$FICHERO"
file "$FICHERO"
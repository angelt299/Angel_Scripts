#!/bin/bash
#Muestra cuántos ficheros y cuántos directorios hay en el directorio actual (sin contar ocultos).
echo "Ficheros: $(find . -maxdepth 1 -type f | wc -l)"
echo "Directorios: $(find . -maxdepth 1 -type d | wc -l)"
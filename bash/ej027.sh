#!/bin/bash
#Crea un fichero con varias líneas que contengan la palabra Windows y sustituye todas sus apariciones por Linux, mostrando el resultado.
echo "Windows es un sistema operativo." > sistema.txt
echo "Windows tiene una interfaz gráfica." >> sistema.txt
echo "Windows es desarrollado por Microsoft." >> sistema.txt
sed 's/Windows/Linux/g' sistema.txt
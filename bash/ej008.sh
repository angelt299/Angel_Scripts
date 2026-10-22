#!/bin/bash
#Crea el fichero notas.txt, añádele tres líneas de texto con echo y redirección, y muéstralo numerando las líneas.
echo "Primera nota" > notas.txt
echo "Segunda nota" >> notas.txt
echo "Tercera nota" >> notas.txt
cat -n notas.txt
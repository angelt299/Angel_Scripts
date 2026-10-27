#!/bin/bash
#Pide una frase por teclado y muéstrala en mayúsculas y después sin espacios.
read -p "Introduce una frase: " frase
frase_mayusculas=$(echo "$frase" | tr '[:lower:]' '[:upper:]')
frase_sin_espacios=$(echo "$frase" | tr -d ' ')
echo "Frase en mayúsculas: $frase_mayusculas"
echo "Frase sin espacios: $frase_sin_espacios"  
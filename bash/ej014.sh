#!/bin/bash
#Muestra la ruta de los ejecutables de bash, ls y grep, y el tipo de comando que es cd.
echo "Ruta de bash: $(which bash)"
echo "Ruta de ls: $(which ls)"
echo "Ruta de grep: $(which grep)"
echo "Tipo de comando cd: $(type cd)"
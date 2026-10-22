#!/bin/bash
#Pide el año de nacimiento del usuario y calcula su edad aproximada usando el año actual obtenido con date.

read -p "Introduce tu año de nacimiento: " anio_nacimiento
anio_actual=$(date +%Y)
edad=$((anio_actual - anio_nacimiento))
echo "Tu edad aproximada es: $edad años"
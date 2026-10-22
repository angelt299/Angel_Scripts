#!/bin/bash
#Script que muestre el nombre del usuario que lo ejecuta, la fecha y hora actuales y el directorio en el que se encuentra.
fecha=date
echo "Dime tu nombre" 
read nombre
echo "hola $nombre, la fecha es " `$fecha` "y estas en el directorio " `pwd`
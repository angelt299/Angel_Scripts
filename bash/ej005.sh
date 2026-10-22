#!/bin/bash
#Copia el fichero /etc/passwd al directorio actual con el nombre copia_passwd.txt y muestra sus permisos y tamaño.
cp /etc/passwd copia_passwd.txt
ls -l copia_passwd.txt
stat copia_passwd.txt
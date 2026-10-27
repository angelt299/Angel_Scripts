#!/bin/bash
#Muestra únicamente los nombres de usuario de /etc/passwd utilizando cut.
cut -d: -f1 /etc/passwd
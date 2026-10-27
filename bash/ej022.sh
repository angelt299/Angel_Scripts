#!/bin/bash
#Muestra el nombre de usuario y su shell separados por una tabulación, utilizando awk -F:.
awk -F: '{print $1 "\t" $7}' /etc/passwd
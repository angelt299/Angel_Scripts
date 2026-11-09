#!/bin/bash
#Muestra la lista de shells distintas que aparecen en /etc/passwd y cuántos usuarios usa cada una.
cut -d: -f7 /etc/passwd | sort | uniq -c
#!/bin/bash
#Muestra únicamente las líneas 5 a 10 de /etc/passwd (hazlo de dos formas: head+tail y sed -n).

# Forma 1: head + tail
head -10 /etc/passwd | tail -6

# Forma 2: sed -n
sed -n '5,10p' /etc/passwd
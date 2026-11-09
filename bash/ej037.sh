#!/bin/bash
#Suma el tamaño en bytes de todos los ficheros del directorio actual usando ls -l y awk.
ls -l | awk '{sum += $5} END {print sum}'
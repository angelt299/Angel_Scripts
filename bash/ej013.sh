#!/bin/bash
#Crea el fichero borrador.txt, renómbralo a definitivo.txt y muévelo a una carpeta entregado creada por el script.

touch borrador.txt
mv borrador.txt definitivo.txt
mkdir entregado
mv definitivo.txt entregado/
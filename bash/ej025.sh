#!/bin/bash
#A partir de un fichero de nombres (créalo en el script), muéstralo ordenado alfabéticamente y sin duplicados.
echo "Ángel" > nombres.txt
echo "María" >> nombres.txt
echo "Pedro" >> nombres.txt
echo "Ana" >> nombres.txt
echo "Luis" >> nombres.txt
echo "Ángel" >> nombres.txt
sort nombres.txt | uniq
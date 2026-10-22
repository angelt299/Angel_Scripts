#!/bin/bash
#Guarda el listado largo de /etc en listado.txt, los errores de listar /root en errores.txt, y muestra cuántas líneas tiene cada fichero.

ls -l /etc > listado.txt 2> errores.txt
echo "Número de líneas en listado.txt: $(wc -l < listado.txt)"
echo "Número de líneas en errores.txt: $(wc -l < errores.txt)"

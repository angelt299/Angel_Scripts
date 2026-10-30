#!/bin/bash
# Copia diferencial semanal: solo los ficheros de /home cambiados desde la última copia total
DESTINO="/bacangel"
NOMBRE="CopDifSem-$(date +%V)"

tar -cjf "$DESTINO/$NOMBRE.tar.bz2" --newer="$DESTINO/.marca_total" /home 2>/dev/null
echo "Copia diferencial creada: $NOMBRE.tar.bz2"
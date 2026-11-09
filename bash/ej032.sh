#!/bin/bash
#A partir de date +%d/%m/%Y, extrae y muestra por separado el día, el mes y el año usando cut.
date +%d/%m/%Y | cut -d'/' -f1
date +%d/%m/%Y | cut -d'/' -f2
date +%d/%m/%Y | cut -d'/' -f3
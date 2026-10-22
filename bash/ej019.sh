#!/bin/bash
#Crea un fichero original.txt, un enlace simbólico enlace_blando y un enlace duro enlace_duro hacia él, y compáralos con ls -li.

touch original.txt
ln -s original.txt enlace_blando
ln original.txt enlace_duro
ls -li original.txt enlace_blando enlace_duro 
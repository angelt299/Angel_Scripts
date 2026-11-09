#!/bin/bash
#Muestra los 5 ficheros o carpetas que más ocupan dentro del HOME del usuario.
du -sh ~/* | sort -hr | head -5
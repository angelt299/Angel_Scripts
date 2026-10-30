#!/bin/bash
# Mantiene /bacangel/espejo como copia exacta de /home/angel
mkdir -p /bacangel/espejo
rsync -av --delete /home/angel/ /bacangel/espejo/
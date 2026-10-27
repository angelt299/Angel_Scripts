#!/bin/bash
#Muestra los 5 procesos que más memoria consumen: usuario, PID y %MEM, usando ps aux, sort y awk.
ps aux | sort -k4,4nr | head -5 | awk '{print $1, $2, $4}'
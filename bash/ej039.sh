#!/bin/bash
# Muestra los procesos del usuario actual mostrando solo PID y comando, ordenados por PID.

ps -u "$USER" -o pid,comm --sort=pid
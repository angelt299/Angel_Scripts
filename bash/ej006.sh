#!/bin/bash
#Pide dos números por teclado y muestra su suma, resta, multiplicación y división entera usando $(( )).
read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2
echo "Suma: $((num1 + num2))"
echo "Resta: $((num1 - num2))"
echo "Multiplicación: $((num1 * num2))"
echo "División entera: $((num1 / num2))"
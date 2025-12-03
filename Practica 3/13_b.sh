#!/bin/bash
#Script: Ejercicio12_b.sh
#Uso: ./Ejercicio12_b.sh<num1><num2>

#Control de cantidad de parametros
if [ $# -ne 2 ]; then
 echo "Error: Se deben pasar exactamente 2 parametros"
 echo "Uso: $0 <num1> <num2>"
 exit 1
fi

#Asignacion de parametros
num1=$1
num2=$2

#Algoritmo
suma=$((num1 + num2))
resta=$((num1 - num2))
multi=$((num1 * num2))

if [ $num1 -gt $num2 ]; then
 mayor=$num1
elif [ $num1 -lt $num2 ]; then
 mayor=$num2
else
 mayor="Son iguales"
fi

#Resultados

echo "------------------------"
echo "RESULTADOS:"
echo "- La suma es: $suma"
echo "- La resta es: $resta"
echo "- La multiplicacion es: $multi"
echo "- El mayor es: $mayor"
echo "------------------------"

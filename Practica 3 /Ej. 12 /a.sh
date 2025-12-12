#!/bin/bash
#Script: Ejercicio12_a.sh
#Uso: ./Ejercicio12_a.sh

#Solicitud de numeros al usuario
echo -n "Introducir primer numero: "
read num1
echo -n "Introducir segundo numero: "
read num2

#Algoritmo
suma=$((num1 + num2))
resta=$((num1 - num2))
multiplicacion=$((num1 * num2))

if [ $num1 -gt $num2 ]; then
 mayor=$num1
elif [ $num1 -lt $num2 ]; then #innecesario
 mayor=$num2
else
 mayor="Son iguales"
fi

#Resultados
echo "----------------------"
echo "RESULTADOS: "
echo " - La suma es $suma"
echo " - La resta es $resta"
echo " - La multiplicacion es $multiplicacion"
echo " - El mayor es : $mayor"
echo "----------------------"

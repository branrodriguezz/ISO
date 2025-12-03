#!/bin/bash
#Script: Ejercicio12_c.sh
#Uso: ./Ejercicio12_c.sh<operacion><num1><num2>

#Control de cantidad de parametros
if [ $# -ne 3 ]; then
 echo "Error: Se deben pasar exactamente 3 parametros"
 echo "Uso: $0<operacion><num1><num2>"
 echo "Operaciones validas: + - * %"
 exit 1
fi

#Asignacion de parametros
operacion=$1
num1=$2
num2=$3

#Validacion de numeros
if ! [[ $num1 =~ ^-?[0-9]+$ && $num2 =~ ^-?[0-9]+$ ]]; then
 echo "Error: Los operandos deben ser numeros enteros"
 exit 1
fi

#Algoritmo
case $operacion in
 "+")
  resultado=$((num1 + num2))
  ;;
 "-")
  resultado=$((num1 - num2))
  ;;
 "*")
  resultado=$((num1 * num2))
  ;;
 "%")
  if [ $num2 -eq 0 ]; then
   echo "Error: No se puede dividir por cero"
   exit 1
  fi
  resultado=$((num1 / num2))
  ;;
*)
  echo "Operacion invalida. Se debe usar: + - * %"
  exit 1
  ;;
esac

#Resultado
echo "Resultado $resultado"

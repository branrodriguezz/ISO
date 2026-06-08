(c) Realizar una calculadora que ejecute las 4 operaciones básicas: +, -,*, %.
Esta calculadora debe funcionar recibiendo la operación y los números como parámetros.

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
#^ (Inicio de línea): Le dice a Bash que la validación debe empezar obligatoriamente desde el primer carácter del texto.
# No vale si hay letras al principio.
# -? (Menos opcional): El signo - representa los números negativos, y el signo de pregunta ? significa "puede estar o no estar". 
# Esto permite que el número sea tanto positivo (9) como negativo (-9).
# [0-9] (Rango de dígitos): Esto es un conjunto de caracteres. 
# En las expresiones regulares, los corchetes con un guion en medio significan "cualquier carácter individual que esté en este rango".
# Es decir, equivale a escribir [0123456789]. Cualquier dígito del 0 al 9 es válido aquí.
# + (Uno o más): Este símbolo aplica al bloque anterior [0-9]. Significa "tiene que haber como mínimo un dígito, pero pueden ser muchos más". 
# Gracias a este +, el script acepta números de varias cifras como 45, 100 o 9999.
# $ (Fin de línea): Le dice a Bash que ahí debe terminar el texto. Evita que alguien escriba algo como 95letras o 123#$.

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

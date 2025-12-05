#!/bin/bash
#Script: Ejercicio17.sh
#Uso: ./Ejercicio17.sh

#Control de cantidad de parametros
if [ $# -ne 0 ]; then
 echo "Error: Se debe pasar exactamente 0 parametros"
 exit 1
fi

#Algoritmo
for archivo in *; do
 if [ -f "$archivo" ]; then
  nuevo_nombre=$(echo "$archivo"|tr 'a-zA-Z' 'A-Za-z'|tr -d 'aA')
  echo "$nuevo_nombre"
 fi
done

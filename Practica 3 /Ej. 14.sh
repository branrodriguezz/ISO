#!/bin/bash
#Script: Ejercicio14.sh
#Uso: ./Ejercicio14.sh<directorio><opcion><cadena>

#Control de cantidad de parametros
if [ $# -ne 3 ]; then
 echo "Error: Se deben pasar, exactamente 3 parametros"
 echo "Uso: $0 <directorio> -a\-b <cadena>"
 exit 1
fi

#Asignacion de parametros
directorio=$1
opcion=$2
cadena=$3

#Verificacion de que el directorio exista
if [ ! -d "$directorio" ]; then
 echo "Error: '$directorio' no es un directorio valido"
 exit 1
fi

#Algoritmo
case $opcion in
 -a)
  for archivo in "$directorio"/*; do
   if [ -f "$archivo" ]; then
    nombre=$(basename "$archivo")
    mv "$archivo" "$directorio/${nombre}${cadena}"
   fi
  done
  echo "Archivos renombrados agregando '$cadena' al final"
  ;;

 -b)
  for archivo in "$directorio"/*; do
   if [ -f "$archivo" ]; then
    nombre=$(basename "$archivo")
    mv "$archivo" "$directorio/${cadena}${nombre}"
   fi
  done
  echo "Archivos renombrados agregando '$cadena' al comienzo"
  ;;
 *)
  echo "Opcion invalida. Se debe usar: -a o -b"
  exit 1
  ;;
esac

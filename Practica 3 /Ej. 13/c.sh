#!/bin/bash
#Script: Ejercicio13_c.sh
#Uso: ./Ejercicio13_c.sh<nombre>

#Control de cantidad de parametros
if [ $# -ne 1 ]; then
 echo "Error: Se debe pasar, exactamente 1 parametro"
 echo "Uso: $0<nombre_archivo>"
 exit 1
fi

#Asignacion de parametros
nombre=$1

#Algoritmo
if [ -e "$nombre" ]; then
 if [ -d "$nombre" ]; then
  echo "'$nombre' existe y es un directorio"
 elif [ -f "$nombre" ]; then
  echo "'$nombre' existe y es un archivo regular"
 else
  echo "'$nombre' existe pero no es ni archivo ni directorio"
 fi
else
 echo "'$nombre' no existe. Se creara un directorio con ese nombre..."
 mkdir "$nombre"
 echo "Directorio '$nombre' creado correctamente"
fi

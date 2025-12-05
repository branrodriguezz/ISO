#!/bin/bash
#Script: Ejercicio18.sh
#Uso: ./Ejercicio18.sh<nombreUsuario>

#Control de cantidad de parametros
if [ $# -ne 1 ]; then
 echo "Error: Se debe pasar exactamente 1 parametro"
 echo "Uso: $0<nombreUsuario>"
 exit 1
fi

#Asignacion de parametros
usuario=$1

#Algoritmo - who: para ver si el usuario esta logueado, -grep -wq: para buscar el nombre exacto del usuario
while true; do
 if who | grep -wq "$usuario"; then
  echo "Usuario $usuario logueado en el sistema"
  exit 0
 else
  echo "Esperando que $usuario se loguee..."
  sleep 10
 fi
done

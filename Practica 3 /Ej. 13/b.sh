#!/bin/bash
#Script: Ejercicio13_b.sh
#Uso: ./Ejercicio13_b.sh

#Seleccion de opcion por parte del usuario
echo "Seleccionar una opcion:"
echo "1. Listar"
echo "2. DondeEstoy"
echo "3. QuienEsta"
read -p "Opcion: " opcion

#Algoritmo
case $opcion in
 1|Listar|listar)
  echo "Contenido del directorio actual:"
  ls
  ;;
 2|DondeEstoy|dondeestoy)
  echo "Ruta actual:"
  pwd
  ;;
 3|QuienEsta|quienesta)
  echo "Usuarios conectados:"
  who
  ;;
 *)
 echo "Opcion invalida"
 ;;
esac

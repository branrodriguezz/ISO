#!/bin/bash
#Script: Ejercicio24.sh
#Uso: ./Ejercicio24.sh <opcion> [<n>]

#Asignacion de variables
opcion=$1

#Verificacion de parametros
if [ $# -lt 1 ]; then
 echo "Error: Se deben pasar al menos un parametro."
 exit 1
fi

#Grupo: variable con el nombre del grupo del cual obtengo usuarios.
group="staff"

#Obtencion de todos los nombres de los usuarios del sistema pertenecientes al grupo "$group"
#getent "$group" busca en /etc/group la linea del grupo cuyo nombre coincide con $group
#cut -d: -f4: corto la linea de texto en campos, usando : como delimitador (-d:)
#y toma el campo 4 (-f4)
#tr ',' ' ' : reemplazo de comas por espacios libres entre usuarios
#se guardan todos los usuarios que cumplan en el arreglso usuarios
#usuarios=($(getent group "$group" | cut -d: -f4 | tr ',' ' '))
usuarios=( $(dscl . -read /Groups/staff | grep -E " GroupMemberShip|GroupMembers" | cut -d ' ' -f $

#Verificacion de usuarios encontrados
#${#usuarios[@]} : devuelve la cantidad de elementos del arreglo
#-eq 0: pregunta si la longitud es cero
if [ ${#usuarios[@]} -eq 0 ]; then
 echo "No se encontraron usuarios del sistema pertenecientes al grupo '$group'"
 exit 1
fi

#Algoritmo
case "$opcion" in
 -b)
  n=$2
  if [ -z "$n" ]; then
   echo "Error: Se debe especificar un numero despues de '-b'"
   exit 1
  #el indice debe ser mayor o igual que 0 y debe ser menor a la cant. de elementos del vector
  elif [ "$n" -ge 0 ] && [ "$n" -lt "${#usuarios[@]}" ]; then
   echo "Elemento en la posicion $n: ${usuarios[$n]}"
  else
   echo "Error: No existe la posicion $n en el arreglo"
  fi
  ;;

 -l)
  echo "La longitud del arreglo es: ${#usuarios[@]}"
  ;;

 -i)
  echo "Usuarios en el grupo '$group':"
  for u in "${usuarios[@]}"; do
   echo "- $u"
  done
  ;;

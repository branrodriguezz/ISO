#!/bin/bash
#Script: Ejercicio16.sh
#Uso: ./Ejercicio16.sh<extension>

#Control de cantidad de parametros
if [ $# -ne 1 ]; then
 echo "Error: Se debe pasar exactamente 1 parametro"
 echo "Uso: $0 <extension>"
 exit 1
fi

#Asignacion de parametros
extension=$1
salida="reporte.txt" #archivo donde se guarda el reporte

#Limpieza del archivo de salida
> "$salida" #redireccion que vacia reporte al inicio. Si no existe, lo crea vacio.

#Algoritmo con append(agregar)  >>, aniade cabecera al archivo reporte txt
echo "Nombre de usuario | Cantidad de archivos con extension .$extension" >> "$salida"
echo "------------------------------------------------------------------" >> "$salida"

for dir in /home/*; do
 if [ -d "$dir" ]; then
  usuario=$(basename "$dir")

  #cuento la cantidad de archivos con la extension dada.
  #redirijo errores al vacio.
  #la salida find se pasa a wc -l que cuenta lineas(cada archivo cuenta una linea)

  cantidad=$(find "$dir" -type f -name "*.$extension" 2>/dev/null | wc -l)
  echo "$usuario | $cantidad"  >> "$salida"
 fi
done
echo "Resultado guardado en $salida"

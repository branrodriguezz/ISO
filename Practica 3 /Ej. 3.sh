3. Crear dentro del directorio personal del usuario logueado un directorio llamado
practica-shell-script y dentro de él un archivo llamado mostrar.sh cuyo contenido
sea el siguiente:
#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no lo hago hoy,
# mañana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es:`whoami`"
echo "Su directorio actual es:" 
pwd

a. Asignar al archivo creado los permisos necesarios de manera que pueda
ejecutarlo
  Listado de permisos:
    cd ~
    mkdir practica-shell-script
    cd practica-shell-script
    touch mostrar.sh
    nano mostrar.sh
    chmod 755 mostrar.sh
    
b. Ejecutar el archivo creado de la siguiente manera: ./mostrar.sh
c. ¿Qué resultado visualiza?
  Introduzca su nombre y apellido:
  Brandon Rodriguez
  Fecha y hora actual:
  Wed Jun  3 08:55:43 -03 2026
  Su apellido y nombre es:
  Rodriguez Brandon
  Su usuario es: branroodriguez
  Su directorio actual es:
  /Users/branroodriguez/practica-shell-script
  
d. Las backquotes (`) entre el comando whoami ilustran el uso de la
sustitución de comandos. ¿Qué significa esto?
  Comando WHOAMI - Sustitucion de comandos:
    La sustitucion de comandos en shell significa que el resultado (salida) de un comando se reemplaza, directamente en la linea donde aparece. El shell ejecuta el comando 
    que esta entre las comillas invertidas o dentro de $(), toma su salida y la sustituye en el lugar donde estaba el comando. 
    
e. Realizar modificaciones al script anteriormente creado de manera de poder
mostrar distintos resultados (cuál es su directorio personal, el contenido de
un directorio en particular, el espacio libre en disco, etc.). Pida que se
introduzcan por teclado (entrada estándar) otros datos.
Si se agrega pwd al final del archivo, se escribe el directorio actual (ruta completa) del archivo. 

2. Investigar la funcionalidad de los comandos echo y read.
El comando echo muestra texto o el valor de variables por pantalla (en la terminal). Es util para dar mensajes al usuario o mostrar
resultados. Ejemplo:
  echo "Hola Mundo" echo "Tu nombre es $nombre"
El comando read permite leer datos ingresados por el usuario desde el teclado y guardarlos en una variable. Se usa para hacer 
scripts interactivos. Ejemplo:
  echo "Ingresar nombre"
  read nombre
  echo "Hola $nombre, bienvenido!"
a. ¿Cómo se indican los comentarios dentro de un script?
Los comentarios en shell script se indican con el simbolo #
Todo lo que sigue despues en esa linea no se ejecuta. Ejemplo: #Comentario
  echo "Hola Mundo!" #Comentario al final de la linea
b. ¿Cómo se declaran y se hace referencia a variables dentro de un script?
Los variables se declaran sin espacios e/ el nombre, el signo = y el valor. Ejemplo: 
  nombre = "Brandon", edad = 19
Para usar o mostrar el valor de una variable, se antepone el signo $ al nombre de la variable, ejemplo:
  echo "Mi nombre es $nombre y tengo $edad años".



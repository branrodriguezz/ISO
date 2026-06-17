El comando cut en shell sirve para extraer secciones especificas de cada linea de texto en un archivo o entrada estandar (stdin). Se puede
pensar como una forma de "Recortar columnas" o "campos" de texto segun su posicion o delimitador. 
La sintaxis general es: cut [opciones] [archivo]. Si no se indica archivo, cut lee de la entrada estandar (se puede usar con pipe). 
Los parametros que puede recibir este comando son: 
. -b lista: selecciona bytes especificos de cada linea (por posicion).
. -c lista: selecciona caracteres especificos de cada linea. 
. -f lista: selecciona campos (fields), separados por un delimitador.
. -d 'Delim': define el delimitador de campos (por defecto es tabulacion).
. -- complement: muestra todo menos los bytes/campos/caracteres indicados.
. -s suprime lineas que no contienen el delimitador (util con -f).

Ejmplos:
. cut -b 1-3 archivo.txt muestra los primeros 3 bytes (util para datos binarios o sin acentos).
. cut -c 1-5 archivo.txt muestra los primeros 5 caracteres de cada linea del archivo.
. cut -d '.' -f 1 datos.csv muestra solo la primera columna (nombre). Delimitada por el '.'
. cut -d '.' -f 1 --complement datos.csv muestra todos los campos excepto el primero. 

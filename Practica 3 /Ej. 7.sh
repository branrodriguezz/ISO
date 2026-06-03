7. El comando test expresion permite evaluar expresiones y generar un valor de retorno, true o false. Este comando puede ser reemplazado por el uso de corchetes 
de la siguiente manera [ expresión ]. Investigar qué tipo de expresiones pueden ser usadas con el comando test. Tenga en cuenta operaciones para: 
evaluación de archivos, evaluación de cadenas de caracteres y evaluaciones numéricas.
  El comando Test [ expresion ] sirve para evaluar condiciones en un script. Su salida es un valor de retorno 0 verdadero 1 falso. 
  Se usa normalmente en estructuras de control if, while, etc.
  El tipo de expresiones que pueden ser usadas con el comando test:
  - Evaluacion de archivos:
    Sirven para comprobar si un archivo o directorio existe o cumple ciertas condiciones.
    Ejemplos:
      -e archivo (verdadero si existe el archivo)
      -f archivo (verdadero si existe y es un archivo regular)
      -d archivo (verdadero si existe y es un directorio)
      -r archivo (verdadero si el archivo es legible)
      -w archivo (verdadero si el archivo es escribible)
      -x archivo (verdadero si el archivo es ejecutable)
      -s archivo (verdadero si el archivo no esta vacio)
      archivo1 -nt archivo2 (verdadero si archivo 1 es mas nuevo que archivo 2)
      archivo1 -ot archivo2 (verdadero si archivo 1 es mas viejo que archivo 2)
      
  - Evaluacion de cadenas de caracteres:
    Sirven para comparar o verificar cadenas. 
    Ejemplos:
      -z cadena (verdadero si la longitud es 0)
      -n cadena (verdadero si la longitud no es 0)
      cadena1 = cadena2 (verdadero si son iguales)
      cadena1 != cadena2 (verdadero si son distintas)
      
  - Evaluacion numericas:
    Sirven para comparar valores enteros (no cadenas).
    Ejemplos:
      -eq (igual)
      -ne (distinto) 
      -gt (mayor que)
      -lt (menor que)
      -ge (mayor o igual que)
      -le (menor o igual que)
  

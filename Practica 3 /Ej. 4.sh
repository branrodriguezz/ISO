4. Parametrización: ¿Cómo se acceden a los parámetros enviados al script al
momento de su invocación? ¿Qué información contienen las variables $#, $*, $? y $HOME dentro de un script?
  Cuando se ejecuta un script en bash, se le pueden pasar parametros o argumentos al invocarlo desde la linea de comandos, separados por espacio: 
    ./mi_script.sh Brandon Rodriguez 19
  A los parametros enviados al script al momento de su invocacion se accede mediante variables especiales numeradas. 
    - $0 --> nombre del script.
    - $1 --> 1er parametro.
    - $2 --> 2do parametro.
    - $n --> n parametro.
  Variables especiales en Bash:
    - $# --> cantidad de parametros pasados al script.
    - $* --> todos los parametros en una sola cadena (separadas por espacios).
    - $? --> codigo de salida del ultimo comando ejecutado (0 = exito , <> 0 = error).
    - $HOME --> directorio personal del usuario actual.
    

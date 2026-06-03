5. ¿Cual es la funcionalidad de comando exit? ¿Qué valores recibe como parámetro y cuál es su significado?
  Comando EXIT: la funcionalidad del comando exit es el detener inmediatamente, la ejecucion del script y devuelve un valor numerico (codigo de salida o exit status) al sistema.
  El valor que recibe como parametro n opcional numerico puede ser entre 0 y 255, que representa el estado de finalizacion del script (0 = exito, <> 0 = error). 
  Si no se especifica ningun numero, Bash usa el codigo de salida del ultimo comando ejecutado. 

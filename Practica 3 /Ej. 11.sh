11. ¿Pueden definirse funciones dentro de un script? ¿Cómo? ¿Cómo se maneja el pasaje de parámetros de una función a la otra?
  En script se pueden definir funciones, hay dos formas validad de definir funciones:
    nombre_funcion() {
      comandos
    }
    function nombre_funcion() {
      comandos
    }
  El pasaje de parametros de una funcion a la otra se maneja igual que en un script, se pasan al invocar la funcion, separados por espacios. Dentro de la funcion, se accede 
  a ellos con las variables posicionales: $1 (1er parametro), $2 (2do parametro).
  Bash no devuelve valores "numericos" directamente, como en otros lenguajes. Hay dos formas de devolver resultados:
    1) Usando echo: permite capturar el valor de una variable.
    2) Usando return: solo para codigos de estado 0-255.
    
  

10. ¿Qué tipo de variables existen? ¿Es shell script fuertemente tipado? ¿Se pueden definir arreglos? ¿Cómo?
  Existen los siguientes tipos de variables:
  1) Variables del usuario (o locales): Son las que se definen dentro del script. Solo existen mientras el script se esta ejecutando.
  2) Varibale de entorno: son variables del sistema o del entorno del usuario. Estan disponibles para todos los procesos y programas. 

Shell Script no es fuertemente tipado, lo cual significa que todas las variables se manejan como cadenas de texto, aunque contengan numeros. 
Se puede definir arreglos en bash (no en todos los shell antiguos).
Ejemplo: numeros = (1 2 3 4 5)

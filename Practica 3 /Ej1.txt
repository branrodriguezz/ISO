1. ¿Qué es el Shell Scripting? ¿A qué tipos de tareas están orientados los script? ¿Los
scripts deben compilarse? ¿Por qué?
Es el proceso de escribir programas o secuencias de comandos (scripts) que se ejecutan en un interprete de comandos del sistema operativo, como bash,zsh,ksh,etc. Un shell script 
es un archivo de texto con instrucciones que el sistema interpreta linea por linea, igual que si se escribieran, manualmente en la terminal. Generalmente su extensión es .sh
Los scripts de shell estan orientados principalmente a tareas repetitivas o administrativas en sistemas GNU/LINUX (aunque tambien en Windows con PowerShell).
Los scripts no deben compilarse, se interpretan. Esto significa que no se traducen a codigo de maquina antes de ejecutarse, como ocurre con los programas en C o Java. 
En cambio, el interprete de Shell lee y ejecuta cada linea del script, en tiempo de ejecucion. No se compilan porque el shell es un interprete, no un compilador. Su diseño busca
flexibilidad y rapidez en la escritura y la ejecucion, no velocidad de ejecucion maxima. La idea es podes modificar y probar scripts facilmente sin necesidad de un proceso de 
compilado intermedio. 

#!/bin/bash
#Script: Ejercicio20.sh
#Uso: ./Ejercicio20.sh

#Estructura
pila=()

#Funciones
#verificar que recibi un parametro
#push: Recibe un parametro y lo agrega a la pila
push(){
 pila+=("$1")
}

#pop: Saca un elemento de la pila
pop(){
 if [ ${#pila[@]} -eq 0 ];then
  echo "La pila esta vacia. No se puede hacer pop"
 else
  last_index=$((${#pila[@]} - 1))
  unset "pila[$last_index]"
  pila=(${pila[@]})
 fi
}

#length: Devuelve la longitud de la pila
length() {
 echo "${#pila[@]}"
}

#print: Imprime todos los elementos de la pila
print() {
 for elem in "${pila[@]}"; do
  echo " - $elem"
 done
}

#Pruebas

echo "Agregando 10 elementos a la pila..."
for i in {1..10}; do
 push "Elemento_$i"
done

echo "Sacando 3 elementos de la pila..."
for i in {1..3}; do
 pop
done

echo "Longitud de la pila: $(length)"

echo "Impresion de la totalidad de los elementos de la pila:"
print

8. Estructuras de control. Investigue la sintaxis de las siguientes estructuras de control incluidas en shell scripting:
- if: se usa para evaluar una condicion y ejecutar comandos segun sea verdadera o falsa.
  if [ condicion ] ; then
    comandos_si_verdadero
  elif [ otra_condicion ] ; then
    comandos_si_se_cumple_elif
  else
    comandos_si_falso
  fi
  
- case: se usa para evaluar una variable frente a varios posibles valores (como un switch en otros lenguajes).
  case variable in
    valor1)
      comandos
      ;;
    valor2)
      otros_comandos
      ;;
    *)
      comandos_por_defecto
      ;;
  esac
  
- while: ejecuta un bloque de comandos mientras se cumpla una condicion.
  while [ condicion ] ; do
    comandos
  done

- for: permite recorrer una lista de elementos o un rango.
  for variable in lista ; do
    comandos
  done
  
- select: se usa para crear menus interactivos (util en scripts de usuario).
  select variable in lista ; do
    comandos
  done

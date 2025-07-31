import math

def mostrar_titulo():
  print('Calculadora Basica COn Funciones usando (not) e (in) y (None)')

def mostrar_menu():
  print()
  print("MENU:")
  print("1: Sumar (+)")  
  print("2: Restar (-)")
  print("3: Multiplicar (*)")
  print("4: Dividir (/)")
  print("5: Potencia (pot)")
  print("6: Radicación (rad)")
  print("7: Logaritmo (log10)")
  print("8: Seno (sen)")
  print("9: Coseno (cos)")
  print("10: Tangente (tan)")
  print("11: Salir")
  print()

def ingresar_datos():
  # Solicita al usuario que ingrese una opción del menú y los números necesarios para la operación
  opcion = input("Ingrese la opción deseada del menú: ").lower() # Convertir a minúsculas para manejar entradas como 'Sumar', 'SUMAR', etc.

  if opcion in ['1','+','sumar',
                '2','-','resta',
                '3','*','multiplicacion'
                '4','/','dividir'
                '5','pot','potencia'
                '6','rad','radicacion'
                '7','log10','logaritmo']:
    # Para las operaciones que requieren dos números
    numero_uno = float(input('Ingrese el primer número de la operación: '))
    numero_dos = float(input('Ingrese el segundo número de la operación: '))
    # Retorna la opción y los dos números ingresados a la función que los procesará

    return opcion, numero_uno, numero_dos
  ## Para las operaciones que requieren un solo número (ángulo o valor)
  elif opcion in ['7', '8', '9', '10']:
    numero_uno = float(input('Ingrese un número (ángulo o valor): '))
    return opcion, numero_uno, None # Devolver None para el segundo número si no es necesario
  else:
    return opcion, None, None  # Por si es '11' (salir) u opción inválida (None para ambos números)

# FUNCIONES MATEMÁTICAS
def calcular_suma(num1, num2): return num1 + num2 # funcion para sumar dos números en una sola línea
def calcular_resta(num1, num2): return num1 - num2 # funcion para restar dos números en una sola línea
def calcular_multiplicacion(num1, num2): return num1 * num2 # funcion para multiplicar dos números en una sola línea
def calcular_division(num1, num2): return num1 / num2 if num2 != 0 else None  # funcion para dividir dos números en una sola línea, manejando división por cero
def calcular_pot(num1, num2): return num1 ** num2 # funcion para elevar un número a una potencia en una sola línea (elevar se usa ** en Python)
def calcular_rad(num1, num2): return pow(num1, 1/num2) # funcion para calcular la raíz n-ésima de un número en una sola línea (usando pow)
def calcular_logaritmo_base10(num1): return math.log10(num1) # funcion para calcular el logaritmo base 10 de un número en una sola línea
def calcular_sen(num1): return math.sin(math.radians(num1)) # funcion para calcular el seno de un ángulo en grados en una sola línea (convertir a radianes)
def calcular_cos(num1): return math.cos(math.radians(num1)) # funcion para calcular el coseno de un ángulo en grados en una sola línea (convertir a radianes)
def calcular_tan(num1): return math.tan(math.radians(num1)) # funcion para calcular la tangente de un ángulo en grados en una sola línea (convertir a radianes)

## Procesar la opción seleccionada y mostrar el resultado
def procesar_y_mostrar_operacion(opcion, num1, num2):
  if opcion == '1' or opcion == '+' or opcion == 'sumar':
    print("La suma es:", calcular_suma(num1, num2)) # se llama a la función de suma enviando los números ingresados mediante dos 
  elif opcion == '2' or opcion == '-' or opcion == 'restar':
    print("La resta es:", calcular_resta(num1, num2))
  elif opcion == '3' or opcion == '*' or opcion == 'multiplicar':
    print("La multiplicación es:", calcular_multiplicacion(num1, num2))
  elif opcion == '4' or opcion == '/' or opcion == 'dividir':
    if num2 != 0:
      print("La división es:", calcular_division(num1, num2))
    else:
      print("¡No se puede dividir entre cero!")
  elif opcion == '5' or opcion == 'pot' or opcion == 'potencia':
    print(f"{num1} elevado a {num2} es:", calcular_pot(num1, num2))
  elif opcion == '6' or opcion == 'rad' or opcion == 'radicar':
    print(f"La raíz {num2} de {num1} es:", calcular_rad(num1, num2))
  elif opcion == '7' or opcion == 'log10' or opcion == 'logaritmo':
    if num1 > 0:
      print("Logaritmo base 10 de", num1, "es:", calcular_logaritmo_base10(num1))
    else:
      print("¡No se puede calcular el logaritmo de un número no positivo!")
  elif opcion == '8' or opcion == 'sen':
    print(f"Seno de {num1} grados:", calcular_sen(num1))
  elif opcion == '9' or opcion == 'cos':
    print(f"Coseno de {num1} grados:", calcular_cos(num1))
  elif opcion == '10' or opcion == 'tan':
    print(f"Tangente de {num1} grados:", calcular_tan(num1))

def llamar_funciones():
  mostrar_titulo()
  
  while True:
    mostrar_menu()
    opcion, num1, num2 = ingresar_datos()
    
    # Valida Si la opción es '11', imprime un mensaje de despedida y termina el bucle mediante el break
    if opcion == '11':
      print("¡Gracias por usar la calculadora! Hasta pronto.")
      break
    # valida si la opción es None (opción inválida)
    elif opcion is None:
      print("Opción no válida. Intenta nuevamente.")
      # valida si la opcion que se digitó por teclado no está en las opciones válidas dentro de la lista
      # puede ser un número o una cadena de texto que se digita por teclado si no se encuentra en la lista, imprime un mensaje de error
    elif opcion not in ['1','+','sumar',
                '2','-','resta',
                '3','*','multiplicacion',
                '4','/','dividir',
                '5','pot','potencia',
                '6','rad','radicacion',
                '7','log10','logaritmo',
                '8','sen',
                '9','cos',
                '10','tan']:
      print("Opción no válida. Intenta nuevamente.")
    else:
      procesar_y_mostrar_operacion(opcion, num1, num2) #envia los números ingresados a la función procesar_y_mostrar_operacion para que realice la operación y muestre el resultado

# EJECUCIÓN DEL PROGRAMA
llamar_funciones()


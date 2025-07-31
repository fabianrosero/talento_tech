Algoritmo MayordeTresNumeros
	Definir numero1,numero2,numero3 Como Entero
	escribir "Ingrese el primer numero: "
	leer numero1
	escribir "ingrese el segundo numero: "
	leer numero2
	escribir "ingrese el tercer numero: "
	leer numero3
	
	mayor=0
	si numero1> mayor Entonces
		mayor = numero1
	FinSi
	si numero2> mayor Entonces
	mayor =numero2	
FinSi
si numero3 > mayor Entonces
	mayor =numero3
FinSi
escribir "El numero mayor es: ", mayor
FinAlgoritmo
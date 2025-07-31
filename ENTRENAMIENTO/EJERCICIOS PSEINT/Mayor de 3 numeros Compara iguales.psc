Algoritmo MayorCompara3Iguales
	Definir numero1,numero2,numero3, mayor_que Como Entero
	escribir "Ingrese el primer numero: "
	leer numero1
	escribir "ingrese el segundo numero: "
	leer numero2
	escribir "ingrese el tercer numero: "
	leer numero3
	mayor_que=0
	Si numero1 = numero2 Y numero2 = numero3 entonces		
			Escribir "Los 3 numeros ingresados son iguales"
		SiNo
		si numero1> mayor_que Entonces
		mayor_que = numero1
	FinSi
	si numero2> mayor_que Entonces
	mayor_que =numero2	
FinSi
si numero3 > mayor_que Entonces
	mayor_que =numero3
FinSi
escribir "El numero mayor es: ", mayor_que
FinSi
FinAlgoritmo
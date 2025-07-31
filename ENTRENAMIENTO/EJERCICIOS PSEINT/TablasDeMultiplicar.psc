Algoritmo TablasDeMultiplicar
	Definir base, i, resultado Como Entero
	Mostrar "Que tabla de multiplicar quiere imprimir"
	leer base
	para i<- 1 hasta 10 Hacer
		resultado = base * i
		mostrar base, "x", i, "=", resultado
	FinPara
FinAlgoritmo

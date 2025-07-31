Algoritmo PositivoNegativo
	Definir n,num Como Entero
	escribir "Cuantos numeros desea ingresar: "
	leer n
	Para i= 1 hasta n con paso 1 Hacer
		escribir "Ingrese el número ", i,""
		leer num
		si num >0 entonces 
			Escribir "El numero es positivo"
		sino 
			si num <0 Entonces
				escribir "El número es negativo"
			FinSi
		FinSi
	FinPara
FinAlgoritmo
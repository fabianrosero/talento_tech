Algoritmo busqueda_secuencial
	Dimensionar l1[10] //declarando una lista a 10 elementos
	Definir valor_buscar Como Entero
	definir encontrado Como Caracter
		encontrado <- "nok"	
	//ciclo para --> llenar de manera aleatoria la lista de 10 elementos
	para i <- 1 hasta 10 Hacer
		l1[i] = Aleatorio(1 , 30)
		Escribir l1[i]
	FinPara	
	//Preguntar que valor desea buscar
	Imprimir "DIGITE EL NÚMERO A BUSCAR: "
	leer valor_buscar	
	//ciclo para --> de recorrer l1 y verificar si el valor_buscar se encuentra entre los elementos
		Para Cada i de l1  hacer
		si i = valor_buscar Entonces
			encontrado = "ok"
		FinSi
	FinPara	
	//CONDICIONAL para verificar si el valor_buscar fue encontrado en la lista
	si encontrado = "ok" Entonces
		Escribir "EL DATO SE HA ENCONTRADO"
	SiNo
		Escribir  "El DATO NO SE HA ENCONTRADO"
	FinSi	
FinAlgoritmo
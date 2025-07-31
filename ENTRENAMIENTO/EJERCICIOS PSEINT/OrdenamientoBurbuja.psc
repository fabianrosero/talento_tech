Algoritmo OrdenamientoBurbuja
	definir n, aux Como Entero
	escribir "Ingrese el tamaño de la lista"
	leer n
	dimensionar l1[n]
	para i <- 1 hasta n Hacer
		l1[i] = Aleatorio(1,30)
		Escribir l1[i]
	FinPara
	para i <- 1 hasta n - 1 Hacer
		Para j <- 1 hasta n-i Hacer
			si l1[j] > l1[j+1] Entonces
				aux <- l1[j]
				l1[j]<-l1[j+1]
				l1[j+1]<-aux
				
			FinSi
		FinPara
	FinPara
	escribir "Lista ordenada"
	para i <- 1 hasta n Hacer
		
		Escribir l1[i]
		finpara
FinAlgoritmo

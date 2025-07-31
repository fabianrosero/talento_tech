Algoritmo PositivoNegativoContador
	Definir n, num, contpos, contneg, ceros Como Entero
	escribir "Cuantos numeros desea ingresar: "
	leer n
	Para i= 1 hasta n con paso 1 Hacer
		escribir "Ingrese el número ", i,""
		leer num
		si num >0 entonces 
			//variable contpos se suma 1 y se actualiza
			contpos=contpos+1
					sino 
			si num <0 Entonces
				//variable contneg se suma 1 y se actualiza
				contneg=contneg+1				
			SiNo
				si num =0 Entonces
					//variable ceros se suma 1 y se actualiza
					ceros=ceros+1
				FinSi
			FinSi
		FinSi
	FinPara
	escribir "La cantidad de numeros Positivos es: ",contpos
	escribir "La cantidad de numeros Negativos es: ",contneg
	escribir "La cantidad de numeros Neutros es: ",ceros
FinAlgoritmo
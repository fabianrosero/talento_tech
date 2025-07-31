Algoritmo ParOImparContador
	//definiendo ademas las variable contpar,contimpar para asignarles el valor de incremento de veces
	Definir n,num,contpar,contimpar Como Entero
		escribir "ingrese la cantidad de numeros a ingresar: "
		leer n
		//inicializar un comienzo a las variables en 0
	contpar=0
	contimpar=0
	//realizando proceso obtencion numero y comparacion si es par o impar
	Para i=1 Hasta n con paso 1 Hacer
		Escribir "ingrese el numero",i
		Leer num
	
	Si num % 2 = 0 entonces
		//la variable contpar se le suma 1 y se vuelve almacenar en la misma variable para actualizarla
		contpar=contpar+1
		
	SiNo
		//la variable contimpar se le suma 1 y se vuelve almacenar en la misma variable para actualizarla
		contimpar =contimpar+1
		
	FinSi
	
fin para
//como se debe escribir al finalizar entonces debe ubicarse por fuera del siclo para
escribir "la cantidad de Pares es: ", contpar
escribir "la cantidad de impares es: ", contimpar
FinAlgoritmo
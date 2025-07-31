Algoritmo menu_operaciones_mientras
	//definición variables
	definir opcion_m, numero_1, numero_2, resultado Como Real
	opcion_m=0
	mientras opcion_m <> 5
		Escribir "MENU DE OPCIONES: "
		Escribir "1. Sumar"
		Escribir "2. Restar"
		Escribir "3. Multiplicar"
		Escribir "4. Dividir"
		Escribir "5. Salir"
		
		escribir "Elija su opción: "
		leer opcion_m
		
		si opcion_m >=1 y opcion_m <= 4 Entonces
			Mostrar "Digite el primer número: "
			leer numero_1
			Mostrar "Digite el segundo número: "
			leer numero_2
			
			Segun opcion_m Hacer
				1:
					resultado = numero_1 + numero_2
					Escribir "El resultado de la suma es: ", resultado
				2:
					resultado = numero_1 - numero_2
					Escribir "El resultado de la resta es: ", resultado
				3:
					resultado = numero_1 * numero_2
					Escribir "El resultado de la Multiplicación es: ", resultado
				4:
					si numero_2 <> 0 Entonces
						resultado = numero_1 / numero_2
						Escribir "El resultado de la División es: ", resultado
					SiNo
						Escribir "No se puede division entre 0"
					FinSi
			Fin Segun
		FinSi
		
		si opcion_m < 1 o opcion_m > 5 Entonces
			Escribir "La opción no es correcta.  Escoja entre la opcion 1 a 4"
		FinSi
	FinMientras
	
FinAlgoritmo
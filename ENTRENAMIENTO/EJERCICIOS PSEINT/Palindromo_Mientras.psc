Algoritmo Palindromo_Mientras
	definir palabra, invertida como cadena
	Escribir "Ingrese una palabra"
	leer palabra
	//inicializacion opcional
	invertida= ""
	// ciclo Para , recorrer a la inversa la palabra ingresada por rl usuario
	i<- Longitud(palabra)
	Mientras i<>0 Hacer
		
		invertida= invertida + Subcadena(palabra,i,i)
		i=i-1
	FinMientras
	
	si palabra = invertida Entonces
		EScribir "La palabra -",palabra, "- Es un Palindromo"
	SiNo
		Escribir "La palabra -",palabra, "- No es un Palindromo"
	FinSi
FinAlgoritmo

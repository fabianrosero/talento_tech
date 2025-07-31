Algoritmo Palindromo
	definir palabra, invertida como cadena
	Escribir "Ingrese una palabra"
	leer palabra
	//inicializacion opcional
	invertida= ""
	// ciclo Para , recorrer a la inversa la palabra ingresada por rl usuario
	para i <- Longitud(palabra) hasta 1 con paso -1 hacer
		invertida =invertida+Subcadena(palabra,i,i)
	FinPara
	
	si palabra = invertida Entonces
		EScribir palabra, " Es un Palindromo"
	SiNo
		Escribir palabra, " No es un Palindromo"
	FinSi
FinAlgoritmo

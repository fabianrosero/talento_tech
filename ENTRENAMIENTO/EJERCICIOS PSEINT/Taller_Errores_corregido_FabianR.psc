Algoritmo Taller_Errores_FabianR
	
    Dimensionar nombres[5], edades[5] 
    Definir suma, edad_mayor, edad_menor, promedio Como Real
    Definir i,j, n Como Entero
    suma <- 0
    edad_mayor <- 0
    edad_menor <- 100
	
    Escribir "Ingrese la cantidad de estudiantes:"
    Leer n
	
    Para i = 1 Hasta n Hacer
        Escribir "Ingrese el nombre del estudiante ", i, ":"
        Leer nombres[i]
        Escribir "Ingrese la edad del estudiante ", i, ":"
        Leer edades[i]
        suma = suma + edades[i]
        Si edades[i] > edad_mayor Entonces
            edad_mayor = edades[i]
        FinSi
        Si edades[i] < edad_menor
            edad_menor = edades[i]
        FinSi
    FinPara
	
    promedio = suma / n
	
    Escribir "El promedio de edades es: ", promedio
    Escribir "La edad mayor es: ", edad_mayor
    Escribir "La edad menor es: ", edad_menor
	
    Escribir "Listado de estudiantes mayores de edad:"
    Para i = 1 Hasta n
        Si edades[i] >= 18
            Escribir nombres[i], " - ", edades[i]
        FinSi
    FinPara
	    
	repetir
		Escribir "¿Desea buscar un estudiante? (si/no)"
		Leer respuesta
	
    Si respuesta == "si"
        Escribir "Ingrese el nombre a buscar:"
        Leer nombre_busqueda
        encontrado = "no"
        Para j = 1 Hasta n
            Si nombres[j] = nombre_busqueda
                Escribir "Edad: ", edades[j]
                encontrado = "si"
            FinSi
        FinPara
        Si encontrado = "no"
            Escribir "No se encontró el estudiante."
        FinSi
	sino 
		si respuesta <> "no"
			escribir "opcion no valida"
		FinSi
    FinSi
Hasta Que respuesta <> "si"
	
    Escribir "Fin del programa."
FinAlgoritmo
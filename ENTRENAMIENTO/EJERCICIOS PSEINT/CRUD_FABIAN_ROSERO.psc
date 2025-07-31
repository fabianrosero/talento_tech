Algoritmo CRUD_FabianR
	//DECLARACIÓN DE VARIABLES
	imprimir "Bienvenid@, favor escoger la cantidad de usuarios a registrar"
	//PUNTO 1 -> se guarda la cantidad de usuarios a registrar y se guarda en la variable "n"
	//esta variable se reemplaza en los indices de las listas para que determine 
	//el tamaño de las listas
	leer n
	Dimensionar cedula[n], nombres[n], apellidos[n], edad[n], menu[5], m_ticket[3]
// PUNTO 5=> se declaró la lista m_ticket[3] donde se va almacenar el menu de la opcion 4
	definir op Como Entero
	definir puede_registrar Como Caracter
	definir encontrado Como Caracter
	imprimir ""
	//Inicialización de la lista menu
	menu[1] <- "1. Registrar usuario"
	menu[2] <- "2. Actualizar usuario"
	menu[3] <- "3. Buscar usuario"
	menu[4] <- "4. Comprar tiquete"
	menu[5] <- "5. Salir"
	//PUNTO 5 => inicializacion de la lista m_ticket para la opcion 4 
	m_ticket[1] <- "1. España"
	m_ticket[2] <- "2. Inglaterra"
	m_ticket[3] <- "3. Ninguno"
	
	//imprimir menu
	para i<-1 hasta 5 Hacer
		Imprimir menu[i]
	FinPara
	
	Imprimir "Elija la opción: "
	leer op
	cont = 1
	//PUNTO 2 => Se reemplaza el ciclo "Mientras" por el ciclo "Repetir Hasta Que" 
	//cambiando la condicion a "op=5" ya que el ciclo primero se ejecuta y luego 
	//verifica la condicion se cumple para que termine y si la condicion
	//no se cumple el ciclo continua.
	Repetir 
		puede_registrar = "si"
		Segun op Hacer
			1:
				Si cont>n Entonces
					puede_registrar="no"
					imprimir "LIMITE DE ",n," REGISTROS ALCANZADOS"
				SiNo
					
				Imprimir "Digite la cedula del usuario a registrar: "
				leer cedula_usuario
				
				//ciclo para --> VERIFICAR SI EL USUARIO 
				para i <- 1 hasta n Hacer
					si cedula_usuario = cedula[i]  Entonces
						puede_registrar = "no"
					FinSi
				FinPara
							
				Si puede_registrar = "si" Entonces
					Imprimir "Digite los nombres del usuario a registrar: "
					leer nombres_usuario
					Imprimir "Digite los apellidos del usuario a registrar: "
					leer apellidos_usuario
					Imprimir "Digite la edad del usuario a registrar: "
					leer edad_usuario
					cont= cont+1
					
					//Ciclo mientras --> Se reemplazo en lugar del "Para" debido a que 
					//en este ciclo se puede actualizar el indice i igualandolo a n 
					//es decir igualandolo al numero total de elementos de la lista 
					// de esa forma se evalua que se cumple la condicion menor o igual n, 
					//y asi terminando el ciclo
					i=1
					Mientras i <= n
						si cedula[i] = "" Entonces
							cedula[i] = cedula_usuario
							nombres[i] = nombres_usuario
							apellidos[i] = apellidos_usuario
							edad[i] = edad_usuario
							imprimir "EL USUARIO HA SIDO REGISTRADO"
							i=n
						FinSi
						i=i+1
					FinMientras
					Imprimir ""
					Imprimir "LISTADO DE USUARIOS:"
					para i <-1 hasta n Hacer
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
					FinPara
				SiNo
					imprimir ""
					imprimir "EL USUARIO YA SE ENCUENTRA REGISTRADO"
					imprimir ""
					imprimir "USUARIOS REGISTRADOS: "
					para i <-1 hasta n Hacer
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
					FinPara
				FinSi
			FinSi
					imprimir""
			2:
				encontrado="nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO A ACTUALIZAR LOS DATOS: "
				leer cedula_usuario_mod
				i=1
				//PUNTO 3 => al igual que en la opcion 1, se reemplazó el ciclo "Para" por el "Mientras"
				//En este ciclo se puede actualizar el indice i igualandolo a n 
				//es decir igualandolo al numero total de elementos de la lista 
				// de esa forma se evalua que se cumple la condicion menor o igual n, 
				//y asi terminando el ciclo
				mientras i<=n
					si cedula[i] = cedula_usuario_mod Entonces
						encontrado="ok"
						Imprimir "Digite los nuevos nombres: "
						leer nuevo_nombre
						imprimir "Digite los nuevos apellidos: "
						leer nuevos_apellidos
						imprimir "Digite la nueva edad: "
						leer nueva_edad
						
						nombres[i] = nuevo_nombre
						apellidos[i] = nuevos_apellidos
						edad[i] = nueva_edad
						imprimir "LOS DATOS HAN SIDO ACTUALIZADOS"
						i=n
					FinSi
					i=i+1
				Finmientras
				Si encontrado="nok" Entonces
					imprimir"USUARIO NO ENCONTRADO"
				FinSi
				imprimir ""
				imprimir "LISTADO DE USUARIOS REGISTRADOS: "
				para i <-1 hasta n Hacer
					imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
				FinPara
				imprimir""
			3:
				encontrado = "nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO A BUSCAR: "
				leer cedula_usuario
				i=1
				//PUNTO 4 => al igual que en la opcion 2, se reemplazó el ciclo "Para" por el "Mientras"
				//En este ciclo se puede actualizar el indice i igualandolo a n 
				//es decir igualandolo al numero total de elementos de la lista 
				// de esa forma se evalua que se cumple la condicion menor o igual n, 
				//y asi terminando el ciclo
				mientras i<=n hacer
					si cedula_usuario = cedula[i] Entonces
						encontrado="ok"
						imprimir ""
						imprimir "USUARIO ENCONTRADO: "
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
						i=n
					finsi
						i=i+1
				Finmientras
					si encontrado = "nok" Entonces
						imprimir "USUARIO NO ENCONTRADO"
					FinSi
				imprimir ""
			
			4:
				encontrado = "nok"
				imprimir "Cedula del pasajero: "
				leer cedula_pasajero
				
				i = 1				
				mientras i <= n Hacer
					
					si cedula[i] = cedula_pasajero Entonces
						encontrado = "ok"
						// PUNTO 5 => ciclo "Para" utilizado para imprimir el menu almacenado en la lista "m_ticket[3]"
						// lista declarada al principio del algoritmo
						imprimir "DESEO VIAJAR A: "
						para i<-1 hasta 3 Hacer
							Imprimir m_ticket[i]
						FinPara
						
						imprimir "Cual es su opción: "
						leer opcion_viaje
						
						Segun opcion_viaje Hacer
							opcion 1:
								imprimir "El valor del tiquete es de: 1.000.000"
								imprimir ""
							opcion 2:
								imprimir "El valor del tiquete es de: 2.000.000"
								imprimir ""
							opcion 3:
								imprimir "Hasta la proxima"
								imprimir ""
							De Otro Modo:
								imprimir "OPCIÓN NO VALIDA"
								imprimir ""
						Fin Segun
						
						i = n
					FinSi
					i = i + 1
				FinMientras
				
				si encontrado = "nok" Entonces
					imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO - NO PUEDE COMPRAR TIQUETES"
					imprimir ""
				SiNo
					imprimir "ESTIMADO USUARIO:"
					imprimir ""
					
					Segun opcion_viaje Hacer
						opcion 1:
							imprimir "USTED TIENE UN VIAJE PENDIENTE A ESPAÑA"
							imprimir ""
						opcion 2:
							imprimir "USTED TIENE UN VIAJE PENDIENTE A INGLATERRA"
							imprimir ""
						opcion 3:
							imprimir "USTED NO COMPRO NINGUN TIQUETE"
							imprimir ""
						De Otro Modo:
							imprimir "FAVOR SELECCIONAR UNA OPCIÓN VALIDA"
							imprimir ""
					Fin Segun
				FinSi
				
			De Otro Modo:
				mostrar "OPCIÓN INCORRECTA, ESCOJA ENTRE 1 A 5"
		Fin Segun
		//imprimir ""
		//IMPRIMIENDO NUEVAMENTE EL MENU PARA ACTUALIZAR LA VARIABLE OP
		para i<-1 hasta 5 Hacer
			Imprimir menu[i]
		FinPara	
		Imprimir "Elija la opción: "
		leer op		
	Hasta Que op = 5
	si op=5
		escribir "Ha salido de la aplicación, Hasta luego!"
	FinSi
	
FinAlgoritmo

SubProceso dif <- comparacion ( eleccionuser,nummaquina )
	Definir dif,resta como entero;
	resta<- nummaquina-eleccionuser;
	
	Si (resta)=0 Entonces
		Escribir "Si, adivinaste"; 
		dif <- 101;
	SiNo
		dif<-resta;
	FinSi
	
	
FinSubProceso

Proceso adivinarElNumero
	definir num,i como entero;
	escribir 'Acabo de pensar un numero entre 1 y 100. Que numero es?';
	num<-azar(100)+1;
	i<- 1;
	
	Repetir
		leer eleccion;
		diferencia <- comparacion (eleccion,num);
		Si num Entonces
			acciones_por_verdadero
		SiNo
			acciones_por_falso
		FinSi
	Hasta Que i=10
	
FinProceso

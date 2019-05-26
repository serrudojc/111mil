Proceso cuadrado
	definir h,a,i,k Como Entero;
	definir salir como caracter;
	salir<-'adentro';
	Repetir
		Escribir 'Ingresar alto:';
		Leer h;
		Escribir 'Ingresar ancho:';
		Leer a;
		
		Para i<-1 Hasta h Con Paso 1 Hacer
			Para k<-1 Hasta a Con Paso 1 Hacer
				escribir Sin Saltar '#';
			FinPara
			Escribir '';
		FinPara
		
		
	Hasta Que salir=='salir';
	
	
	
FinProceso

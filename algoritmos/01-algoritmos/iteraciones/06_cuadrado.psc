Proceso sin_titulo
	definir h,a,i,k como entero;
	definir salir como caracter;
	salir<-'adentro';
	
	Mientras salir!='salir' Hacer
		Repetir
			Escribir 'Ingresar alto'; Leer h; 
			Escribir 'Ingresar ancho'; Leer a; 
			
			Si h<1 Entonces
				Escribir 'Alto inv�lido.';
			SiNo
				Si a<1 Entonces
					Escribir 'Ancho inv�lido.';
				FinSi
			FinSi
			
		Hasta Que h>=1 && a>=1
		
		Para i<-1 Hasta h Con Paso 1 Hacer
			Para k<-1 Hasta a Con Paso 1 Hacer
				escribir Sin Saltar '#';
				
			FinPara
			Escribir ' ';
		FinPara
		Escribir '______________________________';
		Escribir ' ';
	FinMientras
	
	
	
FinProceso

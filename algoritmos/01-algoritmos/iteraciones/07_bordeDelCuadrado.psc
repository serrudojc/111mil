Proceso sin_titulo
	definir h,a,i,k como entero;
	definir salir como caracter;
	salir<-'adentro';
	
	Mientras salir!='salir' Hacer
		Repetir
			Escribir 'Ingresar alto'; Leer h; 
			Escribir 'Ingresar ancho'; Leer a; 
			
			Si h<1 Entonces
				Escribir 'Alto inválido.';
			SiNo
				Si a<1 Entonces
					Escribir 'Ancho inválido.';
				FinSi
			FinSi
			
		Hasta Que h>=1 && a>=1
		
		h<-h+2;
		a<-a+2;
		
		Para i<-1 Hasta h Con Paso 1 Hacer
			Para k<-1 Hasta a Con Paso 1 Hacer
				
				Si i=1 || i=h || k=1 || k=a Entonces
					Si i=1 || i=h Entonces
						Si k=1 || k=a Entonces
							Escribir Sin Saltar '+';
						SiNo
							Escribir Sin Saltar '-';
						FinSi
					SiNo
						Escribir Sin Saltar '|';
					FinSi
				SiNo
					Escribir sin saltar ' ';
				FinSi
				
			FinPara
			Escribir ' ';
		FinPara
		Escribir '______________________________';
		Escribir ' ';
	FinMientras
	
	
	
	
FinProceso

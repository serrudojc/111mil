Proceso sin_titulo
	definir r,j,i Como Entero;
	definir salir Como Caracter;
	salir<-'adentro';
	
	Repetir
		Escribir 'ingresar radio';
		Leer r;
		
		Para j<-0 Hasta r*2 Con Paso 1 Hacer
			Para i<-0 Hasta r*2 Con Paso 1 Hacer
				Si ((i-r)*(i-r)+(j-r)*(j-r))<(r*r) Entonces
					Escribir Sin Saltar'*';
				SiNo
					Escribir Sin Saltar' ';
				FinSi
			FinPara
			Escribir ' ';
		FinPara
	Hasta Que salir='salir';
	
	
	
FinProceso

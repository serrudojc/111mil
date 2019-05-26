SubProceso pos <- buscar ( palabras,pal )
	definir pos,i Como Entero;
	pos<--1;
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Si palabras[i]==pal Entonces
			pos<-i;
		SiNo
			
		FinSi
	FinPara
FinSubProceso

Proceso main
	
	definir i,posicion Como Entero;
	definir pal,palabras Como Caracter;
	Dimension palabras[7];
	
	palabras[0]<-'lunes';
	palabras[1]<-'martes';
	palabras[2]<-'miercoles';
	palabras[3]<-'jueves';
	palabras[4]<-'viernes';
	palabras[5]<-'sábado';
	palabras[6]<-'domingo';
	
	Escribir 'Ingresar palabra a buscar (dia de semana)';
	leer pal;
	
	posicion<-buscar(palabras,pal);
	Si posicion!= -1 Entonces
		Escribir 'la posición es [',posicion,']';
	SiNo
		Escribir 'No se encuentra la palabra';
	FinSi
	
FinProceso

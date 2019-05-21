Proceso escalera
	definir altura,i,l,salida,piso Como Entero;
	
	salida<-1;
	Repetir
		Escribir '';
		Escribir 'Ingrese altura: ';
		leer altura;
		Escribir '';
		si altura>=0 Entonces
			Para i<-0 Hasta altura Con Paso 1 Hacer
				Para l<-1 Hasta i+1 Con Paso 1 Hacer
					Escribir Sin Saltar " ";
				FinPara
				piso<-altura-i;
				si piso=0 entonces
					Escribir '\ PB ';
				SiNo
					Escribir '\ ', altura-i;
				FinSi
				
			FinPara
		SiNo
			escribir 'error de tipeo';
		FinSi
	Hasta Que salida!=1
	
	
FinProceso

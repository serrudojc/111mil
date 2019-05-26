Proceso sin_titulo
	definir h,a,i,k como entero;
	
	Repetir
		Escribir 'Ingresar alto';
		Leer h;
		Escribir 'Ingresar ancho';
		Leer a;
		
		Si h<1 Entonces
			Escribir 'Alto inválido.';
		SiNo
			Si a<1 Entonces
				Escribir 'Ancho inválido.';
			FinSi
		FinSi
		
	Hasta Que h>1 && a>1
	
		
	Para i<-1 Hasta h Con Paso 1 Hacer
		Para k<-1 Hasta a Con Paso 1 Hacer
			escribir Sin Saltar '#';
		FinPara
		Escribir '';
	FinPara
	
	
FinProceso

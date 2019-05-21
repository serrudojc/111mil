Proceso promedio
	Definir cotasuperior,valores,suma,prom Como Real;
	definir i Como Entero;
	suma<-0;
	
	Escribir 'cuantos numeros va promediar?:';
	leer cotasuperior;
	
	Para i<-1 Hasta cotasuperior Con Paso 1 Hacer
		Escribir 'ingresar valores:';
		leer valores;
		
		suma<-valores+suma;
	FinPara
	prom<-suma/cotasuperior;
	Escribir 'promedio es: ',prom;
		
	
FinProceso



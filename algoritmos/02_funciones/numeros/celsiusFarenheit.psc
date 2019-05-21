SubProceso far <- celAFar ( c )
	Definir far Como Real;
	far<-(c*9/5)+32;
	
FinSubProceso

Proceso celsiusFarenheit
	
	Definir tempc Como Real;
	
	Escribir 'Ingrese t ºC:';
	Leer tempc;
	Escribir 'Farenheit= ',celAFar(tempc),'ºF';
	
FinProceso

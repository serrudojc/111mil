Proceso esPar
	Definir A,B Como Entero;
	Definir C Como Caracter;
	C<-'k';
	
	Mientras C != 'si' Hacer
		
		Escribir 'Ingresar número: ';
		Leer A;
		B <- A MOD 2;
		Si B==0 Entonces
			Escribir 'Es Par.';
		SiNo
			Escribir 'No es Par';
		FinSi
		
		Escribir 'Desea salir? (si - no)';
		Leer C;
		
	FinMientras
	
FinProceso


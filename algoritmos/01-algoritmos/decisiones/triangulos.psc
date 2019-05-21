Proceso triangulos
	Definir a,b,c Como Entero;
	Definir salir Como Caracter;
	Repetir
		Escribir 'ingresar tres numeros:';
		Leer a,b,c;
		Si a==b Entonces
			Si b==c Entonces
				Escribir 'es equilatero';
			SiNo
				Escribir 'es isosceles';
			FinSi
		SiNo
			Si b==c Entonces
				Escribir 'es isosceles';
			SiNo
				Escribir 'es escaleno';
			FinSi
		FinSi
		Escribir 'desea salir? [si][no]';
		Leer salir;
	Hasta Que salir=='si'
FinProceso


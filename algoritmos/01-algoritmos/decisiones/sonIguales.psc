Proceso sonIguales
	Definir a,b Como Entero;
	Definir c Como Caracter;
	Repetir
		Escribir 'Ingresar primer numero';
		Leer a;
		Escribir 'Ingresar segundo numero';
		Leer b;
		Si a==b Entonces
			Escribir 'son iguales';
		SiNo
			Escribir 'son distintos';
		FinSi
		Escribir 'desea salir? [si][no]';
		Leer c;
	Hasta Que c==('si')
FinProceso


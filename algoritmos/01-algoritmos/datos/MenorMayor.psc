Proceso ordenarMenorAMayor
	Definir A,B,C Como Entero;
	Escribir 'Ingresar A';
	Leer A;
	Escribir 'Ingresar B';
	Leer B;
	Escribir 'Ingresar C';
	Leer C;
	Si A<B Entonces
		Si B<C Entonces
			Escribir A,', ',B,', ',C;
		SiNo
			Si A<C Entonces
				Escribir A,', ',C,', ',B;
			SiNo
				Escribir C,', ',A,', ',B;
			FinSi
		FinSi
	SiNo
		Si C<B Entonces
			Escribir C,', ',B,', ',A;
		SiNo
			Si C<A Entonces
				Escribir B,', ',C,', ',A;
			SiNo
				Escribir B,', ',A,', ',C;
			FinSi
		FinSi
	FinSi
FinProceso


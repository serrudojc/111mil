SubProceso variable_de_retorno <- conversor ( num )
	
FinSubProceso

Proceso decimalABinario
	Definir num como entero;
	definir salir como caracter;
	
	Repetir
		Escribir 'Ingrese entero';
		leer num;
		Si num>=0 Entonces
			Escribir conversor(num);
		SiNo
			acciones_por_falso
		FinSi
		
	Hasta Que expresion_logica
	
FinProceso

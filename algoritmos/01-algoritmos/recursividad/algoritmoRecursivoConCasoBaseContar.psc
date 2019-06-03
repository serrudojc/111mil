SubProceso recContar ( i )
	Escribir i;
	Si i<10 Entonces	//criterio de parada. determina el Caso Base
		recContar(i+1);
	SiNo
		;
	FinSi
FinSubProceso

Proceso main
	//algoritmo recursivo con caso base.Los algoritmos recursivos necesitan caso base.
	
	recContar(0);
FinProceso


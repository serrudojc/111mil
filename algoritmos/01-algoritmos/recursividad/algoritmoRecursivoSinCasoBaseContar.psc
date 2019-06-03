SubProceso recContar ( i )
	Escribir i;
	recContar(i+1);	
FinSubProceso

Proceso main
	//algoritmo recursivo sin caso base.Los algoritmos recursivos necesitan caso base.
	
	recContar(0);
FinProceso


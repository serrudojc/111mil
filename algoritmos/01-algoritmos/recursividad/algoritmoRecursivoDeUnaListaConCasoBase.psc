

SubProceso r <- sum(l,d,h)
	Definir r Como Entero;
	Si h=d Entonces	
		r<-0;
	SiNo
		r<-l[h-1]+ sum(l,d,h-1);
	FinSi
FinSubProceso

Proceso main
	definir suma,l,d,h como entero;
	Dimension l[6];
	l[0]<-4;
	l[1]<-2;
	l[2]<-10;
	l[3]<-5;
	l[4]<-2;
	l[5]<-3;
	
	Escribir 'ingresar d (desde) y h (hasta) donde sumar: ';
	leer d,h;
	
	suma<-sum(l,d,h);
	Escribir 'suma de lista: ',suma;
	
FinProceso
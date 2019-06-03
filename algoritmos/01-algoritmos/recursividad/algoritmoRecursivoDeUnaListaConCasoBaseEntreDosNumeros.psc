
SubProceso r <- sum(l,d,n)	//sumatoria desde-hasta
	Definir r Como Entero;
	Si n=0 Entonces	
		r<-0;
	SiNo
		r<-l[n-1]+ sum(l,n-1);
	FinSi
FinSubProceso

Proceso main
	definir suma,l como entero;
	Dimension l[4];
	l[0]<-4;
	l[1]<-2;
	l[2]<-10;
	l[3]<-5;
	
	suma<-sum(l,0,4);
	Escribir 'suma de lista: ',suma;
	
FinProceso
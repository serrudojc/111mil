SubProceso ordenar ( caj,carg )		//ordeno de mayor denominacion a menor
	Definir i,k,auxcaj,auxcarg Como Entero;
	
	Para i<-0 Hasta 4-1 Con Paso 1 Hacer
		Para k<-i+1 Hasta 4 Con Paso 1 Hacer
			Si caj[i]<=caj[k] Entonces
				auxcaj<-caj[i];
				auxcarg<-carg[i];
				caj[i]<-caj[k];
				carg[i]<-carg[k];
				caj[k]<-auxcaj;
				carg[k]<-auxcarg;
			SiNo
				
			FinSi
		FinPara
	FinPara
FinSubProceso
//-------------------------------------------------------------------------
SubProceso carga ( caj,carg )
	Definir i como entero;
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir 'Ingresar billetes (50,100,500) para el cajón ',i+1,'.';
		Leer caj[i];
		
		Mientras (caj[i]!=50) && (caj[i]!=100) && (caj[i]!=500)  Hacer
			Escribir 'Denominación incorrecta.';
			Escribir 'Ingresar billetes (50,100,500) para el cajón ',i+1,'.';
			Leer caj[i];
		FinMientras
		
		carg[i]<-100;
	FinPara
		
FinSubProceso
//---------------------------------------------------------------------------
SubProceso disponible <- extraccion ( mont, caj, cant )
	definir disponible,tipobill,billete,k,i como entero;
	Dimension tipobill[3], billete[3];
	
	tipobill[0]<- 500; billete[0]<-0;
	tipobill[1]<- 100; billete[1]<-0;
	tipobill[2]<- 50; billete[2]<-0;
	
	Mientras mont>0 Hacer
		
		Para i<-0 Hasta 4 Con Paso 1 Hacer
			
			Si mont>=caj[i] Entonces		// 1000>=500  500>=500  400>=500   
				Si cant[i]!=0 Entonces		//si hay billetes entonces...
					mont<- mont-caj[i];
					cant[i]<-cant[i]-1;
					
					Para k<-0 Hasta 2 Con Paso 1 Hacer	//cuento cuantos billetes voy dando.
						Si caj[i]=tipobill[k] Entonces
							billete[k]<-billete[k]+1;
						SiNo
							;	
						FinSi
					FinPara
					
				SiNo
					; //No hay billetes en este cajon, ver otro.
				FinSi
			SiNo
				; //el monto es menor al billete del cajon. veo el cajón siguiente.
			FinSi
			
		FinPara
				
	FinMientras
	
	Escribir 'Extraccion: ',billete[0],' *',tipobill[0],'$ + ',billete[1],' *',tipobill[1],'$ + ',billete[2],' *',tipobill[2],'$';
	disponible<-1; //pongo un valor cualquiera. Luego veo que devolver o borrar.	
FinSubProceso

//--------------------------------------------------------------------------

Proceso main
	Definir cajon,cant, monto,disp Como Entero;
	Dimension cajon[5], cant[5];
	
	Escribir 'INICIO DIA. Ingresar montos de cada caja.';
	carga(cajon,cant);	//cargo cada cajon con 100 billetes de 50 o 100  500, solamente.
	
	ordenar(cajon,cant);	//ordeno el vector
	
	definir terminar como entero;
	terminar<-1;		//el cajero empieza a funcionar.
	Mientras terminar=1 Hacer	
		Escribir sin bajar 'Ingrese monto a retirar: ';
		leer monto;
		
		disp<-extraccion(monto,cajon, cant);	//veo si puedo dar billetes
		
	FinMientras
	
FinProceso

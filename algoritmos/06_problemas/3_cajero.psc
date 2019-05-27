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
//--------------------------------------------------------------------------
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
				;	
			FinSi
		FinPara
	FinPara
FinSubProceso
//---------------------------------------------------------------------------
SubProceso disp <- disponibilidad ( mont, caj, cant )	//veo si hay dinero disponible
	definir disp,i,aSacarMin,aSacarMax,dinero como entero;
	i<-0; aSacarMin<-0; aSacarMax<-0;
	
	Mientras mont!=0 && i<5 Hacer
		dinero <- cant[i];						//guardo en dinero que cantidad de billetes tengo del cajon[i]
		Mientras mont >= caj[i] Hacer			//mientras el monto sea mayor a la denominacion del cajón[i]
			Si dinero>0 Entonces				//mientras haya dinero en el cajón 
				aSacarMin <- aSacarMax;
				aSacarMax <- aSacarMin + caj[i];
				dinero <- dinero -1;
				mont <- mont - caj[i];
			SiNo
				;
			FinSi
			
		FinMientras
		i<-i+1;
	FinMientras
	
	Si mont=0 Entonces
		disp <- 1;
	SiNo
		Escribir 'Sólo puedo entregar ',aSacarMin,' o ',aSacarMax,' pesos.';
		disp <- 0;
	FinSi
	
FinSubProceso
//--------------------------------------------------------------------------
SubProceso extraccion ( mont, caj, cant )
	definir tipobill,billete,k,i como entero;
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
		
FinSubProceso

//--------------------------------------------------------------------------

Proceso main
	Definir cajon,cant, monto,sacar Como Entero;
	Dimension cajon[5], cant[5];
	
	Escribir 'INICIO DIA. Ingresar montos de cada caja.';
	carga(cajon,cant);	//cargo cada cajon con 100 billetes de 50 o 100  500, solamente.
	
	ordenar(cajon,cant);	//ordeno el vector
	
	definir terminar como entero;
	terminar<-1;		//el cajero empieza a funcionar.
	Mientras terminar=1 Hacer	
		Escribir sin bajar 'Ingrese monto a retirar: ';
		leer monto;
		
		sacar <- disponibilidad(monto,cajon,cant); 		//veo si hay disponible
		Si sacar = 1 Entonces
			extraccion(monto,cajon, cant);		//extraer
		SiNo
			;
		FinSi
		
		
	FinMientras
	
FinProceso

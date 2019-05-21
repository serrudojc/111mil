SubProceso maq <- eleccionmaquina ( maquina )
	definir maq Como Caracter;
	Segun maquina Hacer
		1:	
			maq<-'piedra';
		2:
			maq<-'papel';
		3:
			maq<-'tijera';
		De Otro Modo:
			Escribir 'error. Ver eleccion de maquina. funcion eleccionmaquina';
	FinSegun
	
FinSubProceso

SubProceso resul <- piedra ( maquina )
	definir resul como entero;
	
	Segun maquina Hacer
		1:
			resul<-1;
			escribir 'Empate!';
		2:
			resul<-2;
			escribir 'Papel envuelve piedra. Yo gano.';
		3:
			resul<-3;
			escribir 'Piedra aplasta tijera. Tu ganas.';
		De Otro Modo:
			resul<-4;
			escribir 'error loco. ver que hacer.';
	FinSegun
FinSubProceso

SubProceso resul <- papel ( maquina )
	definir resul como entero;
	
	Segun maquina Hacer
		1:
			resul<-1;
			escribir 'Papel envuelve piedra. Tu ganas.';
		2:
			resul<-2;
			escribir 'Empate!';
		3:
			resul<-3;
			escribir 'Tijera corta papel. Yo gano.';
		De Otro Modo:
			resul<-4;
			escribir 'error loco. ver que hacer.';
	FinSegun
FinSubProceso

SubProceso resul <- tijera ( maquina )
	definir resul como entero;
	
	Segun maquina Hacer
		1:
			resul<-1;
			escribir 'Piedra aplasta tijera. Yo gano.';
		2:
			resul<-2;
			escribir 'Tijera corta papel. Tu ganas.';
		3:
			resul<-3;
			escribir 'Piedra aplasta tijera. Tu ganas.';
		De Otro Modo:
			resul<-4;
			escribir 'Empate!';
	FinSegun
FinSubProceso



Proceso piedraPapelTijera
	definir eleccion,maquina,juego,resultado como entero;
	definir entrada como caracter;
	
	escribir 'elegir simple o un numero para jugar al mejor de.. ?';
	leer juego;
	
	escribir 'Tu eleccion? (piedra, papel, o tijera)';
	leer entrada;
	
	maquina<-azar(3)+1;
		
	Si entrada = 'piedra' Entonces
		eleccion<-1; //no se aun si me sirve esta variable.
		escribir 'Mi eleccion: ',eleccionmaquina(maquina);
		resultado<-piedra(maquina);
		
	SiNo
		Si entrada = 'papel' Entonces
			eleccion<-2;
			escribir 'Mi eleccion: ',eleccionmaquina(maquina);
			resultado<-papel( maquina );
		SiNo
			Si entrada = 'tijera' Entonces
				eleccion<-3;
				escribir 'Mi eleccion: ',eleccionmaquina(maquina);
				resultado<-tijera(maquina);
			SiNo
				Escribir '',entrada,'',' no es opcion correcta.';
			FinSi
		FinSi
	FinSi
		
FinProceso


// piedra=1,papel=2,tijera=3;			
//Hum maq								humano	maquina
//pi pi	volver								1	1
//pi pa	Papel envuelve piedra. Yo gano.		1	2
//pi ti	Piedra aplasta tijera. Tu ganas.	1	3

//pa pi	Papel envuelve piedra. Tu ganas.	2	1
//pa pa	volver								2	2
//pa ti	Tijera corta papel. Yo gano.		2	3

//ti pi	Piedra aplasta tijera. Yo gano.		3	1
//ti pa	Tijera corta papel. Tu ganas.		3	2
//ti ti	volver								3	3

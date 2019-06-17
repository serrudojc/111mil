/*
 * aca lo que hice fue poner dos clases en un mismo .java
 * a la segunda clase, le tuve que sacar el public, pq me tiraba error
 * La desventaja de esto es que pierdo modularidad?
 */

package numeros;

import java.util.Scanner;

public class EsBisiesto {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		int anio,salir=1;
		
		while (salir==1) {
			System.out.print("ingrese año: ");
			anio = entrada.nextInt();
			escribir(Fechas.esBisiesto(anio));
		}
	}
	
	public static void escribir (boolean rta) {
		if (rta==true) {
			System.out.println("Es Bisiesto.");
			System.out.println("");
		}		
		else {
			System.out.println("No es Bisiesto.");
			System.out.println("");
		}	
	}
}
//tuve que borrar el "public" de public class Fechas{
class Fechas {
	public static boolean esBisiesto(int anio) {
		if (anio%4 != 0)
			return false;
		if (anio%4==0 && anio%100!=0)
			return true;
		if (anio%4==0 && anio%100==0 && anio%400!=0)
			return false;
		if (anio%4==0 && anio%100==0 && anio%400==0)
			return true;
		return false;
	}
}


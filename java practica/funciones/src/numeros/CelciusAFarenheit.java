package numeros;

import java.util.Scanner;

import temp.Conversion;

public class CelciusAFarenheit {

	public static void main (String[] args) {
		int opcion;
		double t;
		Scanner entrada = new Scanner (System.in);
		
		System.out.println("== Elegir conversión ==");
		System.out.println("Celcius a Fahrenheit [1]");
		System.out.println("Fahrenheit a Celcius [2]");
		System.out.print("Ingrese opcion: ");
		opcion = entrada.nextInt();
		
		switch(opcion) {
		case 1: System.out.print("Ingrese temp Celcius: ");
				t = entrada.nextDouble();
				escribir (Conversion.fahrenheit(t));
				System.out.println(" ºF ");
				break;
		case 2: System.out.print("Ingrese temp Fahrenheit: ");
				t = entrada.nextDouble();
				escribir (Conversion.celcius(t));
				System.out.println(" ºC ");
				break;
				
		default:System.out.println("Opcion incorrecta.");
		}
	}
	
	private static void escribir(double temp) {
		System.out.print(temp);
	}	
}

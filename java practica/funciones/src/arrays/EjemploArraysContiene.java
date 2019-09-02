package arrays;

import java.util.Scanner;

public class EjemploArraysContiene {
	public static void contieneStrings() {
		Scanner entrada = new Scanner(System.in);
		String saludos[] = new String[3];
		saludos[0] = "hola";
		saludos[1] = "chau";
		saludos[2] = "hello";
		int n;
		String valor;
		System.out.print("ingresar palabra: ");
		valor = entrada.next();
		System.out.print("ingresar tamaño: ");
		n = entrada.nextInt();
		
		System.out.println(Arrays.contiene(saludos, n, valor));
	}
	
	public static void contieneNumeros() {
		Scanner entrada = new Scanner(System.in);
		Number precios[] = new Number[5];
		precios[0] = 12.34;
		precios[1] = 100;
		precios[2] = 15.35;
		precios[3] = 2000;
		precios[4] = 500.50;
		
		int n;
		Number valor;
		System.out.print("ingresar precio: ");
		valor = entrada.nextFloat();
		System.out.print("ingresar tamaño: ");
		n = entrada.nextInt();
		
		System.out.println(Arrays.contiene(precios, n, valor));
	}
	
	public static void main (String[] args) {
		contieneStrings();
		contieneNumeros();
	}
}

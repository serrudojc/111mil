package arrays;

import java.util.Scanner;

import ImplementacionesArrays.Arrays;

public class Buscar {

	public static void main(String[] args) {
		String[] palabras = new String[5];
		
		String queBuscar;
		int lugar;
		Scanner entrada = new Scanner(System.in);
		
		palabras[0] = "hola";
		palabras[1] = "chau";
		palabras[2] = "adios";
		palabras[3] = "hello";
		palabras[4] = "world";
		
		System.out.print("Escribir palabra a buscar: ");
		queBuscar=entrada.next();
		System.out.print("Escribir hasta que posicion del vector buscar: ");
		lugar=entrada.nextInt();
		
		escribir(Arrays.buscar(palabras, lugar, queBuscar));

	}
	private static void escribir(int indice) {
		System.out.println(indice);
	}
}

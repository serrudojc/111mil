package numeros;

import java.util.Scanner;

import binario.NumerosBinarios;

public class DecimalABinario {
	public static void main (String [] args) {
		int entero;
		
		Scanner entrada = new Scanner (System.in);
		System.out.print("Ingresar decimal a convertir a binario: ");
		entero= entrada.nextInt();
		
		escribir(NumerosBinarios.binario(entero));		
	}
	
	private static void escribir(String rta) {
		System.out.println(rta);
	}
}

//Duda. Al declarar String=""; estoy haciendo un array de caracteres infinito?
// (diferencia con, arr[100] ?)

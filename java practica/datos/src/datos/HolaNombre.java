package datos;

import java.util.Scanner;

public class HolaNombre {

	public static void main(String[] args) {
		
		Scanner entrada = new Scanner (System.in);
		String nombre;
		
		System.out.println("Ingrese su nombre: ");
		nombre=entrada.nextLine();
		
		System.out.println("Hola "+nombre);
		
		entrada.close();		
	}
}

package iteraciones;

import java.util.Scanner;

public class ContarDesde {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		
		int i, numero;
		
		System.out.print("Ingrese numero para cuenta regresiva: ");
		numero = entrada.nextInt();
		
		for(i=numero ; i>=0 ; i--) {
			System.out.println(i);
		}
	}
}

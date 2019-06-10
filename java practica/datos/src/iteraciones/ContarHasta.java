package iteraciones;

import java.util.Scanner;

public class ContarHasta {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		
		int i, numero;
		
		System.out.print("Ingrese limite superior de conteo: ");
		numero = entrada.nextInt();
		
		for(i=1 ; i <= numero ; i++) {
			System.out.println(i);
		}
	}
}

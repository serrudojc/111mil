package iteraciones;

import java.util.Scanner;

public class ContarConPaso {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		int numero,i;
		
		System.out.print("Ingrese un numero: ");
		numero = entrada.nextInt();
				
		for(i=0;;i=i+numero) {
			System.out.println(i);			
		}
	}

}

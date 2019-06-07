package decisiones;

import java.util.Scanner;

public class EsIgual {

	public static void main(String[] args) {
		int a,b;
		Scanner leer = new Scanner (System.in);
		
		while(true) {
			System.out.println("Ingresar dos numeros: ");
			a = leer.nextInt();
			b = leer.nextInt();
			
			if(a == b)
				System.out.println("Son iguales.");
			else
				System.out.println("Son distintos.");
		}
	}
}

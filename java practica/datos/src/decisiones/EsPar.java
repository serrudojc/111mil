package decisiones;

import java.util.Scanner;

public class EsPar {

	public static void main(String[] args) {
		int a;
		Scanner leer = new Scanner (System.in);
		
		System.out.println("Ingresar numero: ");
		a = leer.nextInt();
		
		if (a==0)
			System.out.println("Es par.");
		else {
			if(a%2 == 0)
				System.out.println("Es par.");
			else
				System.out.println("Es impar.");
		}
		
		leer.close();
	}

}

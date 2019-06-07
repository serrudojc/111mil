package decisiones;

import java.util.Scanner;

public class Triangulos {

	public static void main(String[] args) {
		int a,b,c;
		
		while(true) {
			Scanner leer = new Scanner (System.in);
			
			System.out.println("Ingresar lados del triangulo: ");
			a = leer.nextInt();
			b = leer.nextInt();
			c = leer.nextInt();
		
			if (a == b) {
				if(b == c)
					System.out.println("Es equilatero");
				else
					System.out.println("Es isosceles");
			}
			else {
				if(a == c)
					System.out.println("Es isosceles");
				else
					System.out.println("Es escaleno");
			}
//			leer.close(); si dejo esto, me tira error.
		}
	}
}
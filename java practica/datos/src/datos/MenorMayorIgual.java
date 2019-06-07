package datos;

import java.util.Scanner;

public class MenorMayorIgual {

	public static void main(String[] args) {
		int a,b;
		
		Scanner leer = new Scanner (System.in);
		
		System.out.println("Ingresar dos numeros: ");
		a = leer.nextInt();
		b = leer.nextInt();
		
		if (a == b)
			System.out.println(+a+" es igual a "+b);
		else {
			if(a>b)
				System.out.println(+a+" es mayor que "+b);
			else
				System.out.println(+a+" es menor que "+b);
		}
		
		leer.close();
	}

}

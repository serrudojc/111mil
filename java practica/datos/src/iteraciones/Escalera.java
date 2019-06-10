package iteraciones;

import java.util.Scanner;

public class Escalera {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		
		int i, altura, j,k;
		
		System.out.print("Ingrese altura? ");
		altura = entrada.nextInt();
		k=0;
		
		for(i=altura;i>=0;i--) {
			for(j=0;j<k;j++)
				System.out.print(" ");
			if (i==0)
				System.out.println("\\PB");
			else
				System.out.println("\\" +i);
			k=k+1;
		}
	}
}

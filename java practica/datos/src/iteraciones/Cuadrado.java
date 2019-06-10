package iteraciones;

import java.util.Scanner;

public class Cuadrado {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		
		int i, j, alto, ancho;
		
		while(true) {
			System.out.println("Ingrese alto y ancho: ");
			alto = entrada.nextInt();
			ancho = entrada.nextInt();
			//verifico que alto o ancho no sean menores que cero y tiro error.
			if(alto<=0 && ancho<=0) {
				System.out.println("Alto y Ancho inválidos.");
				continue;
			}
			if(alto<=0) {
				System.out.println("Alto inválido.");
				continue;
			}
			if(ancho<=0) {
				System.out.println("Ancho inválido.");
				continue;
			}
			//Imprimo cuadrado
			for(i=0;i<alto;i++){
				for(j=0;j<ancho;j++)
					System.out.print("#");
				System.out.println("");
			}	
		}
	}
}

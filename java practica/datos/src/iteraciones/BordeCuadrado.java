package iteraciones;

import java.util.Scanner;

public class BordeCuadrado {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		
		int i, j, alto, ancho;
		
		while(true) {
			System.out.println("Ingrese alto y ancho: ");
			alto = entrada.nextInt();
			ancho = entrada.nextInt();
			//verifico que alto o ancho no sean menores que cero y tiro error.
			if(alto<1 && ancho<1) {
				System.out.println("Alto y Ancho inválidos.");
				continue;
			}
			if(alto<1) {
				System.out.println("Alto inválido.");
				continue;
			}
			if(ancho<1) {
				System.out.println("Ancho inválido.");
				continue;
			}
			alto=alto+2;
			ancho=ancho+2;
			//Imprimo cuadrado
			for(i=1;i<=alto;i++){
				for(j=1;j<=ancho;j++) {
					if((i==1 && j==1) || (i==1 && j==ancho) || (i==alto && j==1) || (i==alto && j==ancho)) {
						System.out.print("+");
					}else {
						if(i==1 || i==alto) {
							System.out.print("-");
						}else {
							if(j==1 || j==ancho) {
								System.out.print("|");
							}else {
								System.out.print(" ");
							}
						}
					}
				}
				System.out.println("");
			}	
		}
	}
}
package numeros;

import java.util.Scanner;

public class EsPrimo {

	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		int num;
		
		while (true) {
			System.out.print("Ingresar numero: ");
			num = entrada.nextInt();
			escribir (Calcular.calcular(num));
		}
	}
	private static void escribir (boolean rta) {
		if (rta == true)
			System.out.println("Es Primo.");
		else 
			System.out.println("no es primo.");
	}
}
class Calcular {
	public static boolean calcular (int numero) {
		int cont=0;
		
		for (int i=1; i<=numero; i++) {
			
			if (numero%i == 0)
				cont++;
			if (cont>2)
				return false;
		}
		if(cont==2)
			return true;
		else 
			return false;
	}
}
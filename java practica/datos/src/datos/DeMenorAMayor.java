package datos;
//Como hago para usar solo dos if???
import java.util.Scanner;

public class DeMenorAMayor {

	public static void main(String[] args) {
		int a,b,c;
		Scanner ingresar = new Scanner (System.in);
		
		System.out.println("Ingresar 3 numeros: ");
		a = ingresar.nextInt();
		b = ingresar.nextInt();
		c = ingresar.nextInt();
	
		if (a<b) {
			if(b<c)
				System.out.println("Resultado: "+a+", "+b+", "+c+".");
			else {
				if(a<c)
					System.out.println("Resultado: "+a+", "+c+", "+b+".");
				else
					System.out.println("Resultado: "+c+", "+a+", "+b+".");
			}
		}
		else {
			if(a<c)
				System.out.println("Resultado: "+b+", "+a+", "+c+".");
			else {
				if(b<c)
					System.out.println("Resultado: "+b+", "+c+", "+a+".");
				else
					System.out.println("Resultado: "+c+", "+b+", "+a+".");
			}
		}
		ingresar.close();
	}
}

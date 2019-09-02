package arrays;

public class EjemploArraysInicializar {

	public static void main(String[] args) {
		
		String[] palabras = new String[4];
		int n = 4;
		
		Arrays.inicializar(palabras, n, "hola");
		
		for(int i = 0; i<n; i++) {
			System.out.println(String.format("palabra [%d] = %s", i, palabras[i]));
		}
	}

}

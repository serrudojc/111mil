package binario;

public class NumerosBinarios {
	 public static String binario(int numero) {
		String bin="";
		 do {
			 bin = bin + (numero%2);
			 numero = numero/2;
		 }
		 while (numero >= 2);
		 bin = bin + numero;
		 return bin;
	}
}

package binario;

public class NumerosBinarios {
	 public static String binario(int numero) {
		String bin="";
		 do {
			 bin = (numero%2)+bin;
			 numero = numero/2;
		 }
		 while (numero >= 2);
		 //si escribo numero+bin es distinto a bin+numero, me lo escribe "al reves"
		 bin = numero+bin;
		 return bin;
	}
}

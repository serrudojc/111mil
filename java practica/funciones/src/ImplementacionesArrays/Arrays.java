package ImplementacionesArrays;

public class Arrays {
	public static int buscar (Object[] arr, int n, Object valor) {
		for (int i=0; i<n; i++) {
			if(arr[i].equals(valor))
				return i;
		}
		return -1;
	}
	
	public static boolean contiene (Object[] arr, int n, Object valor) {
		for (int i=0; i<n; i++) {
		//	if(arr[i==valor])
			if(arr[i].equals(valor))
				return true;
		}
		return false;		
	}
}

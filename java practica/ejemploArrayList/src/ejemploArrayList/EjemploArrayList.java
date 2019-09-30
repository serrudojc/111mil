package ejemploArrayList;

import java.util.ArrayList;

public class EjemploArrayList {

	public static void main(String[] args) {
		
		//1ro: Declaro, con tipo de dato String, variable cadenas. Me va pedir importar.
		ArrayList<String> cadenas;
		
		//2do: Creo instancia de cadenas:
		cadenas = new ArrayList<String>();
		
		//3ro: agrego elementos al arrayList
		cadenas.add("Holas");
		cadenas.add("a");
		cadenas.add("todos!");
		
		//4to: Recorrer arrayList con for. Se puede usar iteradores. .size es diferente a .lenght(esto era para arreglos)
		for(int i=0; i<cadenas.size(); i++) {
			System.out.println("--->"+cadenas.get(i));
		}
		
		//5to: Eliminar elementos.
		cadenas.remove(1);
		System.out.println("Eliminé un elemento: ");
		for(int i=0; i<cadenas.size(); i++) {
			System.out.println("--->"+cadenas.get(i));
		}

	}

}

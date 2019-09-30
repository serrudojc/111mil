package ejemploArrayListConIteradores;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ArrayListConIterador {

	public static void main(String[] args) {
		
		//1ro: definimos una lista de tipo String
		//el objeto lista  pertenece a la intefaz List<tipoDeDato>, pero a su vez estoy generando
		// una instancia de la clase ArrayList. NO PUEDO INSTANCIAR DE UNA INTERFAZ, Sino de una clase.
		List<String> lista = new ArrayList();

		//2do: llenamos la lista con elementos.
		lista.add("Holas");
		lista.add("a");
		lista.add("todo");
		lista.add("el mundo");
		
		//3ro: para recorrer, tipo de dato, apodo de la var a recorrer y nombre de la lista
		for(String s: lista) {
			System.out.println(s);
		}
		
		//4to: desarrollamos con Iterator (interfaz). OJO NO CONFUNDIR con iterator(objeto que nos permite recorrer).
		System.out.println("Ahora recorrermos con un iterador: ");
		Iterator<String> iterador = lista.iterator();
		while(iterador.hasNext()) {
			System.out.println(iterador.next());
		}
	}

}

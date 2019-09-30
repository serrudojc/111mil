package juego;

import java.util.Iterator;

public class Carabelas extends NombreEmbarcaciones implements Embarcacion, Cargable {

	public int Nudos() {
		return 0;
	}

	public Iterator DameTuCarga() {
		Cargas e[] = new Cargas[4];
		System.out.println(e.length);

		return null;
	}

}
// el iterador es para guardar, envolverlo al array y no dejar que lo
// modifiquen.
// el otro "JUnit" es quien lo usa.
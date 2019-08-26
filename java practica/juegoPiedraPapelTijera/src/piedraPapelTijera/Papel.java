package piedraPapelTijera;

public class Papel implements Eleccion {

	@Override
	public int ganador(Eleccion o) {
		
		if (o instanceof Tijera)
			return 0;
		if (o instanceof Piedra)
			return 1;
		if (o instanceof Papel)
			return 2;
		else
			return 3;
		
	}

}

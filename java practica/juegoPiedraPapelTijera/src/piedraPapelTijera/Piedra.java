package piedraPapelTijera;

public class Piedra implements Eleccion {

	@Override
	public int ganador(Eleccion o) {
		
		if (o instanceof Papel)
			return 0;
		if (o instanceof Tijera)
			return 1;
		if (o instanceof Piedra)
			return 2;
		else
			return 3;
		
	}

}

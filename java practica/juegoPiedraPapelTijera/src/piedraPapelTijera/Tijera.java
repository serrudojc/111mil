package piedraPapelTijera;

public class Tijera implements Eleccion {

	@Override
	public int ganador(Eleccion o) {
		
		if (o instanceof Piedra)
			return 0;
		if (o instanceof Papel)
			return 1;
		if (o instanceof Tijera)
			return 2;
		else
			return 3;
		
	}

}

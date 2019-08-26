package piedraPapelTijera;

public class Principal {

	public static void main(String[] args) {
		int resultado;
		
		
		Eleccion jugador = new Tijera();
		Eleccion computadora = new Papel();
		
		resultado = jugador.ganador(computadora);
		
		switch (resultado) {
		case 0: System.out.println("Computadora Gana");
				break;
		case 1: System.out.println("Jugador Gana");
				break;
		case 2: System.out.println("Empate");
				break;
		default: System.out.println("Error");
				break;
		}
		
	}

}

package prueba;

import estructura.Persona;

public class PracticaPojo2 {

	public static void main(String[] args) {
		Persona[] ps;
	
		ps[0] = new Persona();
		ps[1] = new Persona();
		ps[2] = new Persona();
		
		ps[0].setNombre("franco");
		ps[0].setEdad(20);
		
		ps[1].setNombre("juanc");
		ps[1].setEdad(32);
		
		ps[2].setNombre("ll");
		ps[2].setEdad(0);
		
		calcular(ps)
		
	
	}
}

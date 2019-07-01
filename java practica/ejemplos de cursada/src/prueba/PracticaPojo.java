package prueba;

import estructura.Persona;

public class PracticaPojo {

	public static void main(String[] args) {
		
		Persona pers1 = new Persona();
		Persona pers2 = new Persona();
		
		pers1.setNombre("franco");
		pers1.setEdad(20);
		
		pers2.setNombre("juanc");
		pers2.setEdad(32);
		
		if (pers1.getEdad() > pers2.getEdad()) {
			System.out.println(pers1.getNombre()+" es mayor");
		}else {
			System.out.println(pers2.getNombre()+" es mayor");
		}
	
	}
}

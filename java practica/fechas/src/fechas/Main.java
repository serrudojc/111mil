package fechas;

public class Main {

	public static void main(String[] args) {
		Fecha f = new Fecha();
		
		f.fecha_crear(2000, 1, 1);
		
		System.out.println(f.fecha_toString(f));
		
		System.out.println(f.getDia()+" "+f.getMes()+" "+f.getAnio());
	}

}

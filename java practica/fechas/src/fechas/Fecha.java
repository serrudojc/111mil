package fechas;

public class Fecha {
	//atributos
	int anio = 0;
	int mes = 0;	//aca son 12 meses, donde creo un vector de 12?
	int dia = 0;	// idem
	
	//metodos
	void fecha_crear (int anio, int mes, int dia){
		this.anio = anio;
		this.mes = mes;
		this.dia = dia;
	}
	
	String fecha_toString(Fecha fecha){
		String mensaje = String.valueOf(fecha);
		return mensaje;
	}

	public int getAnio() {
		return anio;
	}

	public void setAnio(int anio) {
		this.anio = anio;
	}

	public int getMes() {
		return mes;
	}

	public void setMes(int mes) {
		this.mes = mes;
	}

	public int getDia() {
		return dia;
	}

	public void setDia(int dia) {
		this.dia = dia;
	}
	
	
}
	
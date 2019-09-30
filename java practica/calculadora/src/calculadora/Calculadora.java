package calculadora;

public class Calculadora {
	double a;
	double b;
	double c;
	
	public double sumar(double a, double b) {
		double resultado = a + b;
		return resultado;
	}
	
	public double resta(double a, double b) {
		double resultado = a - b;
		return resultado;
	}
	
	public double producto(double a, double b) {
		double resultado = a*b;
		return resultado;
	}
	
	public double division(double a, double b) {
		double resultado = a/b;
		return resultado;
	}
}

package pruebaJUnit;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class PruebaTest {
/*
	@Test
	public void testSuma() {
		int resultado = Prueba.suma(2, 3);
		int esperado = 5; //2+3=5
		assertEquals(esperado, resultado);
	}
*/	
	@Test
	public void testResta() {
		int resultado = Prueba.resta(3, 2);
		int esperado = 1;
		assertEquals(esperado, resultado);
	}
}

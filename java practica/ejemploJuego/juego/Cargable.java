package juego;

import java.util.Iterator;

//hacer dos cargables
public interface Cargable<M> {
	Iterator<M> DameTuCarga();  
}
//el bote va a tener una sola cosa de los 4 tipos que hay y ahi usa el iterador
//dame el iterador de tu carga
//devolve el array
package dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import br.com.caelum.vraptor.ioc.Component;
import dominio.Marca;

@Component
public class MarcaDao {

	
	
	private static List<Marca> MARCAS = new ArrayList<Marca>();

	static {
		marcasIniciais();
	}
	
	
	/*public MarcaDao() {
	
		MARCAS.add(new Marca("Ford", "Estados Unidos"));
		MARCAS.add(new Marca("Honda", "Jap�o"));
		MARCAS.add(new Marca("Mitsubishi", "Jap�o"));
	
	}*/
	
	
	
	public static void marcasIniciais() {
		
		MARCAS.add(new Marca("Ford", "Estados Unidos"));
		MARCAS.add(new Marca("Honda", "Jap�o"));
		MARCAS.add(new Marca("Mitsubishi", "Jap�o"));
		
	}
	
	public List<Marca> pegaTodos() {
		/*MARCAS.clear();*/
		/*marcasIniciais();*/
		
		return Collections.unmodifiableList(MARCAS);
	}




	
}

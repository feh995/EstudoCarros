package dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


import br.com.caelum.vraptor.ioc.Component;
import dominio.Carro;

@Component
public class CarroDao {

	private static List<Carro> CARROS = new ArrayList<Carro>();

		
	public void salva(Carro carro) {
		carro.setId(CARROS.size() +1);
		CARROS.add(carro);
	}

	public List<Carro> pegaTodos() {
		return Collections.unmodifiableList(CARROS);
	}

	public void remove(Carro carro) {
		CARROS.remove(carro.getId()-1);
		
	}
	
	
}

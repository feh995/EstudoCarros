package dominio;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Carro {
	private Marca marca;
	
	private String modelo;
	
	private double preco;
	
	private int anoFabricacao;
	private int anoModelo;
}

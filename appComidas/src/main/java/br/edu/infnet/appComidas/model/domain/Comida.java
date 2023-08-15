package br.edu.infnet.appComidas.model.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import br.edu.infnet.appComidas.model.exceptions.InvalidaException;
import br.edu.infnet.appComidas.model.exceptions.ValorZeradoException;

@Entity
@Table(name = "TComida")
public class Comida extends Produto {
	
	private boolean vegetariana;
	private int quantidade;
	private String ingredientes;

	public Comida() {
		// TODO Auto-generated constructor stub
	}
	
	public Comida(String codigo, String nome, float valor) throws ValorZeradoException {
		super(codigo, nome, valor);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public float calcularValorVenda() throws InvalidaException {
		
		if(quantidade < 300) {
			throw new InvalidaException("O tamanho da comida está inválido!");
		}
		
		return this.getValor() + (vegetariana ? 3 : 0) + quantidade * 0.05f;
	}
	
	@Override
	public String toString() {
		
		StringBuilder sb = new StringBuilder();
		sb.append(super.toString());
		sb.append(";");
		sb.append(vegetariana ? "vegetariana=S" : "vegetariana=N");
		sb.append(";");
		sb.append(quantidade);
		sb.append(";");
		sb.append(ingredientes);

		return sb.toString();
	}

	public boolean isVegetariana() {
		return vegetariana;
	}

	public void setVegetariana(boolean vegetariana) {
		this.vegetariana = vegetariana;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public String getIngredientes() {
		return ingredientes;
	}

	public void setIngredientes(String ingredientes) {
		this.ingredientes = ingredientes;
	}
}

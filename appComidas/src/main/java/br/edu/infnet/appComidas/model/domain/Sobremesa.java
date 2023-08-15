package br.edu.infnet.appComidas.model.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

import br.edu.infnet.appComidas.model.exceptions.InvalidaException;
import br.edu.infnet.appComidas.model.exceptions.ValorZeradoException;

@Entity
@Table(name = "TSobremesa")
public class Sobremesa extends Produto {
	
	private boolean gelada;
	private int tamanho;
	private String sabor;

	public Sobremesa() {
		// TODO Auto-generated constructor stub
	}

	public Sobremesa(String codigo, String nome, float valor) throws ValorZeradoException {
		super(codigo, nome, valor);
		// TODO Auto-generated constructor stub
	}

	@Override
	public float calcularValorVenda() throws InvalidaException {
		
		if(tamanho < 300) {
			throw new InvalidaException("O tamanho da sobremesa está inválido!");
		}
		
		return this.getValor() + (gelada ? 3 : 0) + tamanho * 0.05f;
	}
	
	@Override
	public String toString() {
		
		StringBuilder sb = new StringBuilder();
		sb.append(super.toString());
		sb.append(";");
		sb.append(gelada ? "gelada=S" : "gelada=N");
		sb.append(";");
		sb.append(tamanho);
		sb.append(";");
		sb.append(sabor);

		return sb.toString();
	}

	public boolean isGelada() {
		return gelada;
	}

	public void setGelada(boolean gelada) {
		this.gelada = gelada;
	}

	public int getTamanho() {
		return tamanho;
	}

	public void setTamanho(int tamanho) {
		this.tamanho = tamanho;
	}

	public String getSabor() {
		return sabor;
	}

	public void setSabor(String sabor) {
		this.sabor = sabor;
	}
}

package br.edu.infnet.appComidas.model.domain;

import br.edu.infnet.appComidas.model.exceptions.ValorZeradoException;

public class Sobremesa extends Produto {

	public Sobremesa(String codigo, String nome, float valor) throws ValorZeradoException {
		super(codigo, nome, valor);
		// TODO Auto-generated constructor stub
	}

	@Override
	public float calcularValorVenda() {
		// TODO Auto-generated method stub
		return 0;
	}

}

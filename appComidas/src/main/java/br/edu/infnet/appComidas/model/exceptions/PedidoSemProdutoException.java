package br.edu.infnet.appComidas.model.exceptions;

public class PedidoSemProdutoException extends Exception {

	private static final long serialVersionUID = 1L;

	public PedidoSemProdutoException(String mensagem) {
		super(mensagem);
	}
}
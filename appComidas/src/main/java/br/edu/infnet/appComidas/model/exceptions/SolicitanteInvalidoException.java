package br.edu.infnet.appComidas.model.exceptions;

public class SolicitanteInvalidoException extends Exception {

	private static final long serialVersionUID = 1L;

	public SolicitanteInvalidoException(String mensagem) {
		super(mensagem);
	}
}
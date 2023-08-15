package br.edu.infnet.appComidas.model.exceptions;

public class InvalidaException extends Exception {

	private static final long serialVersionUID = 1L;

	public InvalidaException(String mensagem) {
		super(mensagem);
	}
}

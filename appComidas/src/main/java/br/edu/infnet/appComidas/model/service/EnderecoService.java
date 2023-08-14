package br.edu.infnet.appComidas.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appComidas.client.IEnderecoClient;
import br.edu.infnet.appComidas.model.domain.Endereco;

@Service
public class EnderecoService {
	
	@Autowired
	private IEnderecoClient enderecoClient;

	public Endereco buscaPorCep(String cep) {

		return enderecoClient.buscaPorCep(cep);
	}
}
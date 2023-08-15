package br.edu.infnet.appComidas.model.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appComidas.model.domain.Sobremesa;
import br.edu.infnet.appComidas.model.domain.Usuario;
import br.edu.infnet.appComidas.model.repository.SobremesaRepository;

@Service
public class SobremesaService {

	@Autowired
	private SobremesaRepository sobremesaRepository;

	public Sobremesa incluir(Sobremesa sobremesa) {
		return sobremesaRepository.save(sobremesa);
	}
	
	public void excluir(Integer id) {
		sobremesaRepository.deleteById(id);
	}
	
	public Collection<Sobremesa> obterLista(){
		return (Collection<Sobremesa>) sobremesaRepository.findAll();
	}
	
	public Collection<Sobremesa> obterLista(Usuario usuario){
		return (Collection<Sobremesa>) sobremesaRepository.obterLista(usuario.getId());
	}

	public Sobremesa obterPorId(Integer id) {
		return sobremesaRepository.findById(id).orElse(null);
	}
}

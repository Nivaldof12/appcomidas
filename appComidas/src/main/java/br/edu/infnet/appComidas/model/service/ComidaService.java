package br.edu.infnet.appComidas.model.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appComidas.model.domain.Comida;
import br.edu.infnet.appComidas.model.domain.Usuario;
import br.edu.infnet.appComidas.model.repository.ComidaRepository;

@Service
public class ComidaService {

	@Autowired
	private ComidaRepository comidaRepository;

	public Comida incluir(Comida comida) {
		return comidaRepository.save(comida);
	}
	
	public void excluir(Integer id) {
		comidaRepository.deleteById(id);
	}
	
	public Collection<Comida> obterLista(){
		return (Collection<Comida>) comidaRepository.findAll();
	}
	
	public Collection<Comida> obterLista(Usuario usuario){
		return (Collection<Comida>) comidaRepository.obterLista(usuario.getId());
	}

	public Comida obterPorId(Integer id) {
		return comidaRepository.findById(id).orElse(null);
	}
}

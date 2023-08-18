package br.edu.infnet.appComidas.model.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import br.edu.infnet.appComidas.model.domain.Solicitante;
import br.edu.infnet.appComidas.model.domain.Usuario;
import br.edu.infnet.appComidas.model.repository.SolicitanteRepository;

@Service
public class SolicitanteService {
	
	@Autowired
	private SolicitanteRepository solicitanteRepository;
	
	public Solicitante incluir(Solicitante solicitante) {
		return solicitanteRepository.save(solicitante);
	}
	
	public void excluir(Integer key) {
		solicitanteRepository.deleteById(key);
	}
	
	public Collection<Solicitante> obterLista(){
		return (Collection<Solicitante>) solicitanteRepository.findAll();
	}
	
	public Collection<Solicitante> obterLista(Usuario usuario) {
	    boolean isAdmin = usuario.isAdmin();
	    return solicitanteRepository.obterLista(isAdmin, usuario, Sort.by(Direction.ASC, "nome"));
	}

}
package br.edu.infnet.appComidas.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appComidas.model.domain.Solicitante;
import br.edu.infnet.appComidas.model.domain.Usuario;

@Repository
public interface SolicitanteRepository extends CrudRepository<Solicitante, Integer> {

	@Query("from Solicitante s where (?1 = true or s.usuario = ?2)")
	List<Solicitante> obterLista(boolean isAdmin, Usuario usuario, Sort sort);

}
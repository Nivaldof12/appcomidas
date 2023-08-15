package br.edu.infnet.appComidas.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appComidas.model.domain.Sobremesa;

@Repository
public interface SobremesaRepository extends CrudRepository<Sobremesa, Integer> {

	@Query("from Sobremesa s where s.usuario.id = :userId")
	List<Sobremesa> obterLista(Integer userId);
}

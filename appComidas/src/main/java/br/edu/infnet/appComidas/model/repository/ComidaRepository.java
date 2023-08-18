package br.edu.infnet.appComidas.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appComidas.model.domain.Comida;

@Repository
public interface ComidaRepository extends CrudRepository<Comida, Integer> {

	@Query("from Comida")
	List<Comida> obterLista(Integer userId);
}

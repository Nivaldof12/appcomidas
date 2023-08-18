package br.edu.infnet.appComidas.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appComidas.model.domain.Pedido;
import br.edu.infnet.appComidas.model.domain.Usuario;

@Repository
public interface PedidoRepository extends CrudRepository<Pedido, Integer> {

	@Query("from Pedido p where (?1 = true or p.usuario = ?2)")
	List<Pedido> obterLista(boolean isAdmin, Usuario usuario);

}
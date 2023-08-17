package br.edu.infnet.appComidas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import br.edu.infnet.appComidas.model.domain.Usuario;
import br.edu.infnet.appComidas.model.service.UsuarioService;

@Order(1)
@Component
public class UsuarioLoader implements ApplicationRunner {

	@Autowired
	private UsuarioService usuarioService;

	@Override
	public void run(ApplicationArguments args) throws Exception {
		
		Usuario userAdmin = new Usuario("Administrador ", "admin@admin.com", "123");
		userAdmin.setSetor("Diretoria");
		userAdmin.setTipo("Administrador");
		userAdmin.setAdmin(true);

		usuarioService.incluir(userAdmin);
		
		System.out.println("Inclusão do administrador "+userAdmin.getNome()+" realizada com sucesso!!!");
		
		for (int i = 0; i < 9; i++) {
			Usuario usuario = new Usuario("Usuario " + i, "usuario"+i+"@usuario.com", "0"+i);
			usuario.setSetor("Presidência");
			usuario.setTipo("Padrão");

			usuarioService.incluir(usuario);
			
			System.out.println("Inclusão do usuário "+usuario.getNome()+" realizada com sucesso!!!");
		}

	}
}

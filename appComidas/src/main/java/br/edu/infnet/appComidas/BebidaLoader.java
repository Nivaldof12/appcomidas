package br.edu.infnet.appComidas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import br.edu.infnet.appComidas.model.domain.Bebida;
import br.edu.infnet.appComidas.model.domain.Usuario;
import br.edu.infnet.appComidas.model.exceptions.InvalidaException;
import br.edu.infnet.appComidas.model.exceptions.ValorZeradoException;
import br.edu.infnet.appComidas.model.service.BebidaService;

@Order(3)
@Component
public class BebidaLoader implements ApplicationRunner {

	@Autowired
	private BebidaService bebidaService;

	@Override
	public void run(ApplicationArguments args) throws Exception {
		
		Usuario admin = new Usuario();
		admin.setId(1);
		
		try {
			Bebida bebida = new Bebida("b1caf4", "Chocolate Quente", 4, "Nestle");
			bebida.setGelada(false);
			bebida.setTamanho(500);
			bebida.setUsuario(admin);
			System.out.println(bebida);
			System.out.println("Valor de Venda = R$" + bebida.calcularValorVenda());

			bebidaService.incluir(bebida);
		} catch (ValorZeradoException | InvalidaException e) {
			System.out.println("[ERRO] " + e.getMessage());
		}

		try {
			Bebida bebida = new Bebida("b1caf3", "Pefrigerante", 5, "Pepsi");
			bebida.setGelada(true);
			bebida.setTamanho(350);
			bebida.setUsuario(admin);
			System.out.println(bebida);
			System.out.println("Valor de Venda = R$" + bebida.calcularValorVenda());

			bebidaService.incluir(bebida);
		} catch (ValorZeradoException | InvalidaException e) {
			System.out.println("[ERRO] " + e.getMessage());
		}

		try {
			Bebida bebida = new Bebida("b1caf2", "Beats", 8, "Skol");
			bebida.setGelada(true);
			bebida.setTamanho(300);
			System.out.println(bebida);
			bebida.setUsuario(admin);
			System.out.println("Valor de Venda = R$" + bebida.calcularValorVenda());

			bebidaService.incluir(bebida);
		} catch (ValorZeradoException | InvalidaException e) {
			System.out.println("[ERRO] " + e.getMessage());
		}
		
		System.out.println("Listagem de Bebidas:");
		for(Bebida bebida : bebidaService.obterLista()) {
			System.out.printf("%d - %s - %s\n", 
					bebida.getId(),
					bebida.getNome(),
					bebida.getMarca()
				);
		}
	}
}
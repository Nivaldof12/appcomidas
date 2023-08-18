package br.edu.infnet.appComidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appComidas.model.domain.Sobremesa;
import br.edu.infnet.appComidas.model.domain.Usuario;
import br.edu.infnet.appComidas.model.service.SobremesaService;

@Controller
public class SobremesaController {

	@Autowired
	private SobremesaService sobremesaService;

	private String msg;

	@GetMapping(value = "/sobremesa")
	public String telaCadastro() {
		return "sobremesa/cadastro";
	}	

	@GetMapping(value = "/sobremesa/lista")
	public String telaLista(Model model) {
		
		model.addAttribute("sobremesas", sobremesaService.obterLista());

		model.addAttribute("mensagem", msg);
		
		msg = null;

		return "sobremesa/lista";
	}
	
	@PostMapping(value = "/sobremesa/incluir")
	public String incluir(Sobremesa sobremesa, @SessionAttribute("usuario") Usuario usuario) {
		
		sobremesa.setUsuario(usuario);

		sobremesaService.incluir(sobremesa);
		
		msg = "A inclusão da sobremesa "+sobremesa.getNome()+" foi realizada com sucesso!!!";
		
		return "redirect:/sobremesa/lista";
	}
		
	@GetMapping(value = "/sobremesa/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Sobremesa sobremesa = sobremesaService.obterPorId(id);
		
		try {
			sobremesaService.excluir(id);
			
			msg = "A exclusão do produto "+sobremesa.getNome()+" foi realizada com sucesso!!!";
		} catch (Exception e) {
			msg = "Impossível realizar a exclusão do produto "+sobremesa.getNome()+"!!!";
		}

		return "redirect:/sobremesa/lista";
	}
}

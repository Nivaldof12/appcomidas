package br.edu.infnet.appComidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appComidas.model.domain.Comida;
import br.edu.infnet.appComidas.model.domain.Usuario;
import br.edu.infnet.appComidas.model.service.ComidaService;

@Controller
public class ComidaController {

	@Autowired
	private ComidaService comidaService;

	private String msg;

	@GetMapping(value = "/comida")
	public String telaCadastro() {
		return "comida/cadastro";
	}	

	@GetMapping(value = "/comida/lista")
	public String telaLista(Model model, @SessionAttribute("usuario") Usuario usuario) {
		
		model.addAttribute("comidas", comidaService.obterLista(usuario));

		model.addAttribute("mensagem", msg);
		
		msg = null;

		return "comida/lista";
	}
	
	@PostMapping(value = "/comida/incluir")
	public String incluir(Comida comida, @SessionAttribute("usuario") Usuario usuario) {
		
		comida.setUsuario(usuario);

		comidaService.incluir(comida);
		
		msg = "A inclusão da comida "+comida.getNome()+" foi realizada com sucesso!!!";
		
		return "redirect:/comida/lista";
	}
		
	@GetMapping(value = "/comida/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		Comida comida = comidaService.obterPorId(id);
		
		try {
			comidaService.excluir(id);
			
			msg = "A exclusão do produto "+comida.getNome()+" foi realizada com sucesso!!!";
		} catch (Exception e) {
			msg = "Impossível realizar a exclusão do produto "+comida.getNome()+"!!!";
		}

		return "redirect:/comida/lista";
	}
	
}

package br.edu.infnet.appComidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appComidas.model.domain.Endereco;
import br.edu.infnet.appComidas.model.domain.Usuario;
import br.edu.infnet.appComidas.model.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;

	private String msg;

	@GetMapping(value = "/usuario")
	public String telaCadastro() {
		return "usuario/cadastro";
	}

	@GetMapping(value = "/usuario/lista")
	public String telaLista(Model model) {
		
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		model.addAttribute("mensagem", msg);
		
		msg = null;
		
		return "usuario/lista";
	}

	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario, Endereco endereco, Model model) {
		
	    Usuario existingUsuario = usuarioService.obterUsuarioPorEmail(usuario.getEmail());
	    if (existingUsuario != null) {
	        model.addAttribute("mensagem", "O email "+usuario.getEmail()+" já foi cadastrado no sistema.");
	        return "usuario/cadastro";
	    }
		
		usuario.setEndereco(endereco);
		usuarioService.incluir(usuario);
		
		msg = "A inclusão do usuário "+usuario.getNome()+" foi realizada com sucesso!!!";
		
		return "redirect:/";
	}
		
	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(@PathVariable Integer id) {

		usuarioService.excluir(id);
		
		msg = "A exclusão do usuário "+id+" foi realizada com sucesso!!!";

		return "redirect:/usuario/lista";
	}
	
	@GetMapping(value = "/usuario/{id}/editar")
	public String telaEditar(@PathVariable Integer id, Model model) {
		Usuario usuario = usuarioService.obterUsuarioPorId(id);
		
			model.addAttribute("usuarioss", usuario);
			
			return "usuario/edicaousuario";

	}
	
	@PostMapping(value = "/usuario/{id}/alterar")
	public String alterar(@PathVariable Integer id, Usuario horarioAlterado) {
		Usuario usuarioExistente = usuarioService.obterUsuarioPorId(id);
		if (usuarioExistente != null) {
			// Atualiza os atributos do horário existente com os valores do horário alterado
			usuarioExistente.setNome(horarioAlterado.getNome());
			usuarioExistente.setSenha(horarioAlterado.getSenha());
			usuarioExistente.setEmail(horarioAlterado.getEmail());
			usuarioExistente.setTipo(horarioAlterado.getTipo());
			usuarioExistente.setSetor(horarioAlterado.getSetor());
			
			// Salva as alterações no banco de dados
			usuarioService.incluir(usuarioExistente);
		} else {
			
		}
		return "redirect:/usuario/lista";
	}
	
}
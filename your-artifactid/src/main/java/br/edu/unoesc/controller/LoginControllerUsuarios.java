package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;

@Controller
@RequestMapping("/usuario")
public class LoginControllerUsuarios {
	
	@Autowired
	private UsuarioDAO usuarioDAO;

	
	@RequestMapping(path = { "", "/" })
	public String loginForm() {
		return "usuario/login";
	}

	@RequestMapping(value = "/valida", method = RequestMethod.POST)
    public String valida(String email, String senha, Model model) {
        Usuario usuario = usuarioDAO.findByLoginSenha(email, senha);
        if (usuario != null) {
        	String nome = usuario.getNome();
        	model.addAttribute("usuario" + nome);
            return "redirect:/pedido";
        } else {
        	model.addAttribute("Erro", "Email ou senha Incorreta!");
            return "usuario/login";
        }
    }
	
}

package br.edu.unoesc.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;

@Controller
@RequestMapping("/user")
public class LoginControllerUsuarios {

	@Autowired
	private UsuarioDAO usuarioDAO;

	private Long idLogado;

	@RequestMapping(path = { "", "/" })
	public String loginForm() {
		return "user/login";
	}

	@RequestMapping(path = "/cadastro")
	public String cadastro() {
		return "user/cadastro";
	}

	@RequestMapping(value = "/valida", method = RequestMethod.POST)
	public String valida(String email, String senha, Model model) {
		Usuario usuario = usuarioDAO.findByLoginSenha(email, senha);
		if (usuario != null) {
			setIdLogado(usuario.getCodigo());
			return "redirect:/pedido";
		} else {
			model.addAttribute("Erro", "Email ou senha Incorreta!");
			return "user/login";
		}
	}

	@RequestMapping(path = "/esqueceu")
	public String esqueceuSenha() {
		return "user/esqueceu";
	}

	@RequestMapping(value = "/recuperar", method = RequestMethod.POST)
	public String recuperar(String email, Model model) {
		Usuario usuario = usuarioDAO.finByLogin(email);

		Long codigo = usuario.getCodigo();

		String senha = GeraSenha().toString();

		usuarioDAO.updateSenha(senha, codigo);

		return "user/login";

	}

	public String GeraSenha() {
		Random gerador = new Random();
		for (int i = 0; i < 6; i++) {
			gerador.nextInt(6);
		}
		return gerador.toString();
	}

	public Long getIdLogado() {
		return idLogado;
	}

	public void setIdLogado(Long idLogado) {
		this.idLogado = idLogado;
	}

}

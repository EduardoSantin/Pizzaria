package br.edu.unoesc.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.banco.Banco;
import br.edu.unoesc.dao.CadastroPizzaDAO;
import br.edu.unoesc.dao.EntregaDAO;
import br.edu.unoesc.dao.PedidoDAO;
import br.edu.unoesc.dao.TamanhoPizzaDAO;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Entrega;
import br.edu.unoesc.model.Pedido;
import br.edu.unoesc.model.Usuario;

@Controller
@RequestMapping("/pedido")
public class PedidoController {

	@Autowired
	private CadastroPizzaDAO cadastropizzaDao;

	@Autowired
	private TamanhoPizzaDAO tamanhopizzaDao;

	@Autowired
	private PedidoDAO pedidoDao;

	@Autowired
	private UsuarioDAO userDao;
	
	@Autowired
	private LoginControllerUsuarios lg;
	
	@Autowired
	private EntregaDAO entregaDao;

	private String caregar(Model model) {
		model.addAttribute("pizzas", cadastropizzaDao.findAll());
		model.addAttribute("tamanhos", tamanhopizzaDao.findAll());
		model.addAttribute("carrinho", Banco.pedidos);
		// manda o id do usuario logado para salvar no pedido
		model.addAttribute("idUsuario", lg.getIdLogado());
		somarTotal(model);
		return "pedido/pedido";
	}

	@RequestMapping(path = { "", "/" })
	public String pedido(Model model) {
		return caregar(model);
	}

	@RequestMapping(path = "/listar", method = RequestMethod.POST)
	public String listar(Pedido pedido, Model model) {
		pedido.setDataPedido(LocalDate.now());
		pedidoDao.saveAndFlush(pedido);
		pedidoDao.lancarIDTamanho(pedido.getCodigo());
		pedidoDao.calculaValor(pedido.getCodigo());
		Banco.pedidos.add(pedidoDao.findByCodigo(pedido.getCodigo()));
		
		return caregar(model);
	}
	
	private double total;
	public void somarTotal(Model model) {
		total = 0;
		for(int i = 0; i< Banco.pedidos.size(); i++) {
			Pedido p = Banco.pedidos.get(i);
			total = total + p.getValorTotal();
			model.addAttribute("total", total);
		}
	}
	
	@RequestMapping(path = "/excluir/{codigo}", method = RequestMethod.GET)
	public String excluir(@PathVariable(name = "codigo") Long codigo, Model model) {
		for (int i = 0; i < Banco.pedidos.size(); i++) {
			Pedido p = Banco.pedidos.get(i);
			if (p.getCodigo().equals(codigo)) {
				// remove da lista
				Banco.pedidos.remove(p);
				// remove do banco de dados
				Pedido pedido = pedidoDao.findByCodigo(codigo);
				pedidoDao.delete(pedido);
				break;
			}
		}
		return caregar(model);
	}
	
	@RequestMapping(path = "/finalizar")
	public String finalizar(Pedido pedido, Model model) {
		Usuario usuario = userDao.retornaUsuario(lg.getIdLogado());
		model.addAttribute("carrinho", Banco.pedidos);
		model.addAttribute("total", total);
		model.addAttribute("nome", usuario.getNome());
		model.addAttribute("cpf", usuario.getCpf());
		model.addAttribute("endereco", usuario.getEndereco());
		model.addAttribute("bairro", usuario.getBairro());
		model.addAttribute("cidade", usuario.getCidade());
		model.addAttribute("numero", usuario.getNumero());
		return "pedido/finalizar";
	}
	
	private Long comparaCodigo = 0l;
	@RequestMapping(path = "/finalizarEntrega", method = RequestMethod.POST)
	public String finalizarEntrega(Entrega entrega, Model model) {
		for (int i = 0; i < Banco.pedidos.size(); i++) {
			Pedido p = Banco.pedidos.get(i);
				entrega.setCodigoPedido(p.getCodigo());
				if(comparaCodigo.equals(0l)) {
					entregaDao.saveAndFlush(entrega);
					entregaDao.salvaStatusEntrega(entrega.getCodigo());	
					comparaCodigo = entrega.getCodigo();
				}else {
					comparaCodigo = comparaCodigo + 1;
					entrega.setCodigo(comparaCodigo);
					entregaDao.saveAndFlush(entrega);
					entregaDao.salvaStatusEntrega(entrega.getCodigo());
				}
		}
		Banco.pedidos.clear();
		return "menu/menu";
	}
	
}

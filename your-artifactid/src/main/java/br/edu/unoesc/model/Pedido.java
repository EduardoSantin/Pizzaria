package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Pedido {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long codigo;

	private String sabor;

	private String tamanho;

	private int quantidade;

	private double valorTotal;

	@ManyToOne
	private Usuario usuario;

	@ManyToOne
	private TamanhoPizza tamanhopizza;

	public Pedido() {
	}

	public Pedido(Long codigo, String sabor, String tamanho, int quantidade, double valorTotal, Usuario usuario,
			TamanhoPizza tamanhopizza) {
		super();
		this.codigo = codigo;
		this.sabor = sabor;
		this.tamanho = tamanho;
		this.quantidade = quantidade;
		this.valorTotal = valorTotal;
		this.usuario = usuario;
		this.tamanhopizza = tamanhopizza;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getSabor() {
		return sabor;
	}

	public void setSabor(String sabor) {
		this.sabor = sabor;
	}

	public String getTamanho() {
		return tamanho;
	}

	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public double getValorTotal() {
		return valorTotal;
	}

	public void setValorTotal(double valorTotal) {
		this.valorTotal = valorTotal;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public TamanhoPizza getTamanhopizza() {
		return tamanhopizza;
	}

	public void setTamanhopizza(TamanhoPizza tamanhopizza) {
		this.tamanhopizza = tamanhopizza;
	}

}

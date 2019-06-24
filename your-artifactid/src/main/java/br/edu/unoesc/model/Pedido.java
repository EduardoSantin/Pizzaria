package br.edu.unoesc.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Pedido {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long codigo;

	private String sabor;

	private String tamanho;

	private int quantidade;

	private double valorTotal;

	private Long idUsuario;

	private Long idTamanho;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate data;

	public Pedido() {
	}

	public Pedido(Long codigo, String sabor, String tamanho, int quantidade, double valorTotal, Long idUsuario,
			Long idTamanho, LocalDate data) {
		super();
		this.codigo = codigo;
		this.sabor = sabor;
		this.tamanho = tamanho;
		this.quantidade = quantidade;
		this.valorTotal = valorTotal;
		this.idUsuario = idUsuario;
		this.idTamanho = idTamanho;
		this.data = data;
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

	public Long getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}

	public Long getIdTamanho() {
		return idTamanho;
	}

	public void setIdTamanho(Long idTamanho) {
		this.idTamanho = idTamanho;
	}

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}



}

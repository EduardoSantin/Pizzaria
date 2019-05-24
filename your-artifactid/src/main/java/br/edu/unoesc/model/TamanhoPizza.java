package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TamanhoPizza {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long codigo;
	
	private String tamanho;

	private Double valor;

	public TamanhoPizza() {
		super();
	}

	public TamanhoPizza(Long codigo, String tamanho, Double valor) {
		super();
		this.codigo = codigo;
		this.tamanho = tamanho;
		this.valor = valor;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getTamanho() {
		return tamanho;
	}

	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	

}

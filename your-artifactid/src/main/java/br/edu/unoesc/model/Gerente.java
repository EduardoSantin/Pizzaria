package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Gerente {

	@Id
	private Long codigo;

	private String nome;

	private String endereco;

	private int CNPJ;

	public Gerente() {
		super();
	}

	public Gerente(Long codigo, String nome, String endereco, int cNPJ) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.endereco = endereco;
		CNPJ = cNPJ;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public int getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(int cNPJ) {
		CNPJ = cNPJ;
	}

}

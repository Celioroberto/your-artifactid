package br.edu.unoesc.model;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class Categoria implements MinhaEntidade {

	@Id
	@GeneratedValue
	private Long codigo;
	
	@Column(nullable=false, length=500)
	private String nome;
	
	@Column(nullable=false)
	private Integer quantidade_pessoas;
	
	@Column(nullable=false)
	private Integer quantidade_criancas;
	
	@Column(nullable=false, length=500)
	private String descricao;
	
	@Column(nullable=false)
	private Float valor_diaria;
	
	@OneToMany(mappedBy="categoria", fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	private List<CategoriaItem> itens;

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

	public Integer getQuantidade_pessoas() {
		return quantidade_pessoas;
	}

	public void setQuantidade_pessoas(Integer quantidade_pessoas) {
		this.quantidade_pessoas = quantidade_pessoas;
	}

	public Integer getQuantidade_criancas() {
		return quantidade_criancas;
	}

	public void setQuantidade_criancas(Integer quantidade_criancas) {
		this.quantidade_criancas = quantidade_criancas;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Float getValor_diaria() {
		return valor_diaria;
	}

	public void setValor_diaria(Float valor_diaria) {
		this.valor_diaria = valor_diaria;
	}

	public List<CategoriaItem> getItens() {
		return itens;
	}
	
	

}

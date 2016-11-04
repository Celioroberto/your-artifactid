package br.edu.unoesc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
	@NamedQuery (name= Item.TODOS, query = "select i from Item i"),
})
public class Item implements MinhaEntidade{
	
	public static final String TODOS = "TODOS";
	
	@Id
	@GeneratedValue
	private Long codigo;
	
	@Column(nullable=false, length=500)
	private String nome;
	
	@Column(nullable=false, length=500)
	private String descricao;

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

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	

}

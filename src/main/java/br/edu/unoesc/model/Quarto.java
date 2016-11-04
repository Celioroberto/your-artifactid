package br.edu.unoesc.model;

import javax.persistence.*;

@Entity
public class Quarto implements MinhaEntidade{
	@Id
	@GeneratedValue
	private Long codigo;
	
	@Column(nullable=false)
	private Integer numero;
	
	@Column(nullable=false, length=500)
	private String situacao;
	
	@ManyToOne(targetEntity=Categoria.class, fetch=FetchType.LAZY)
	@JoinColumn(name="codigo_categoria", nullable=false)
	private Categoria categoria;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public Integer getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	

}

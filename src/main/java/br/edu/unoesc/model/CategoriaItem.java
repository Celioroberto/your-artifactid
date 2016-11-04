package br.edu.unoesc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class CategoriaItem implements MinhaEntidade{
	@Id
	@GeneratedValue
	private Long codigo;
	
	@Column(nullable=false, length=500)
	private Integer quantidade;
	
	@ManyToOne(targetEntity=Item.class, fetch=FetchType.LAZY)
	@JoinColumn(name="codigo_item", nullable=false)
	private Item item;
	
	@ManyToOne(targetEntity=Categoria.class, fetch=FetchType.LAZY)
	@JoinColumn(name="codigo_categoria", nullable=false)
	private Categoria categoria;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	
}

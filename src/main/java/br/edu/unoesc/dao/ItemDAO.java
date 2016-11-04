package br.edu.unoesc.dao;

import javax.enterprise.context.RequestScoped;

import br.edu.unoesc.model.Item;

@RequestScoped
public class ItemDAO  extends HibernateDAO<Item>{

}

package br.edu.unoesc.controller;
 
import javax.inject.Inject;

import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.*;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.*;

@Controller
@Path("/item")
public class ItemController {

	@Inject
	private ItemDAO itemDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Item item = new Item();

	@Get("/home")
	public void home() {
		if (item != null) {
			result.include("item", item);
		}
		result.include("itemview", itemDao.listar(Item.class, "TODOS"));
	}

	@Post("/cadastrar")
	public void cadastrar(Item item) {
		if (item != null) {
			try {
				itemDao.salvar(item);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.item = itemDao.buscar(Item.class, codigo);
		result.forwardTo(ItemController.class).cadastrar(this.item);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Item pes = itemDao.buscar(Item.class, codigo);
		try {
			itemDao.excluir(pes);
			result.forwardTo(ItemController.class).cadastrar(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(ItemController.class).cadastrar(null);
		}
	}
	
}

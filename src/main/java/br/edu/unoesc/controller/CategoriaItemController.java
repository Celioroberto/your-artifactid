package br.edu.unoesc.controller;
 
import javax.inject.Inject;

import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.*;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.*;

@Controller
@Path("/categoriaitem")
public class CategoriaItemController {

	@Inject
	private CategoriaItemDAO categoriaItemDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private CategoriaItem categoriaitem = new CategoriaItem();

	@Get("/home")
	public void home() {
		if (categoriaitem != null) {
			result.include("categoriaitem", categoriaitem);
		}
		result.include("mensagem", "CategoriaItem");
	}

	@Post("/cadastrar")
	public void cadastrar(CategoriaItem categoriaitem) {
		if (categoriaitem != null) {
			try {
				categoriaItemDao.salvar(categoriaitem);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		result.include("categoriaitemview", categoriaItemDao.listar(CategoriaItem.class, "TODOS"));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.categoriaitem = categoriaItemDao.buscar(CategoriaItem.class, codigo);
		result.forwardTo(CategoriaItemController.class).home();
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		CategoriaItem pes = categoriaItemDao.buscar(CategoriaItem.class, codigo);
		try {
			categoriaItemDao.excluir(pes);
			result.forwardTo(CategoriaItemController.class).cadastrar(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(CategoriaItemController.class).cadastrar(null);
		}
	}
	
}

package br.edu.unoesc.controller;
 
import javax.inject.Inject;

import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.*;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.*;

@Controller
@Path("/categoria")
public class CategoriaController {

	@Inject
	private CategoriaDAO categoriaDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Categoria categoria = new Categoria();

	@Get("/home")
	public void home() {
		if (categoria != null) {
			result.include("categoria", categoria);
		}
		result.include("mensagem", "teste");
	}

	@Post("/cadastrar")
	public void cadastrar(Categoria categoria) {
		if (categoria != null) {
			try {
				categoriaDao.salvar(categoria);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		result.include("categoriaview", categoriaDao.listar(Categoria.class, "TODOS"));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.categoria = categoriaDao.buscar(Categoria.class, codigo);
		result.forwardTo(CategoriaController.class).home();
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Categoria pes = categoriaDao.buscar(Categoria.class, codigo);
		try {
			categoriaDao.excluir(pes);
			result.forwardTo(CategoriaController.class).cadastrar(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(CategoriaController.class).cadastrar(null);
		}
	}
	
}

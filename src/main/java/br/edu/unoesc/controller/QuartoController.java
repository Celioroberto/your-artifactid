package br.edu.unoesc.controller;
 
import javax.inject.Inject;

import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.*;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.*;

@Controller
@Path("/quarto")
public class QuartoController {

	@Inject
	private QuartoDAO quartoDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Quarto quarto = new Quarto();

	@Get("/home")
	public void home() {
		if (quarto != null) {
			result.include("quarto", quarto);
		}
		result.include("mensagem", "teste");
	}

	@Post("/cadastrar")
	public void cadastrar(Quarto quarto) {
		if (quarto != null) {
			try {
				quartoDao.salvar(quarto);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		result.include("quartoview", quartoDao.listar(Quarto.class, "TODOS_QUARTOS"));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.quarto = quartoDao.buscar(Quarto.class, codigo);
		result.forwardTo(QuartoController.class).home();
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Quarto pes = quartoDao.buscar(Quarto.class, codigo);
		try {
			quartoDao.excluir(pes);
			result.forwardTo(QuartoController.class).cadastrar(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(QuartoController.class).cadastrar(null);
		}
	}
	
}

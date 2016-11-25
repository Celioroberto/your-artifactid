<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/5dfa548964.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<title>Cadastro de Categoria</title>
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<h2><a href="<c:url value='/categoria/home'/>" class="btn btn-default "><i class="fa fa-arrow-left"></i></a> Cadastro de Categoria</h2>
			<hr />
			<form action="<c:url value='/categoria/cadastrar'/>" method="post">
				<div class="input-group">
					<label>Codigo:</label> 
					<input type="text"	name="categoria.codigo" value="${categoria.codigo}"	readonly="readonly" class="form-control"/>
				</div>
				<div class="input-group">
					<label>Nome:</label>
					<input type="text" name="categoria.nome" value="${categoria.nome}" class="form-control"/>
				</div>
				<div class="input-group">
					<label>Quantidades de adultos:</label>
					<input type="text" name="categoria.quantidade_pessoas" value="${categoria.quantidade_pessoas}" class="form-control" />
				</div>
				<div class="input-group">
					<label>Quantidades de crianças:</label>
					<input type="text" name="categoria.quantidade_criancas" value="${categoria.quantidade_criancas}" class="form-control"/>
				</div>
				<div class="input-group">
					<label>Descrição:</label>
					<textarea name="categoria.descricao" class="form-control" rows="5">${categoria.descricao}</textarea>
				</div>
				<div class="input-group">
					<label>Valor diária:</label>
					<input type="text" name="categoria.valor_diaria" value="${categoria.valor_diaria}" class="form-control" />
				</div>	
				<button type="submit" class="btn btn-default">Enviar</button>
			</form>
		</div>
	</div>
</body>
</html>
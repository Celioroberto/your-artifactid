<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/5dfa548964.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<title>Cadastro de itens</title>
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<h2>Cadastro de itens</h2>
			<form action="<c:url value='/item/cadastrar'/>" method="post">
				<div class="input-group">
					<label>Codigo:</label> 
					<input type="text"	name="item.codigo" value="${item.codigo}"	readonly="readonly" class="form-control"/>
				</div>
				<div class="input-group">
					<label>Nome:</label>
					<input type="text" name="item.nome" value="${item.nome}" class="form-control"/>
				</div>
				
				<div class="input-group">
					<label>Descrição:</label>
					<textarea name="item.descricao" class="form-control" rows="5">${item.descricao}</textarea>
				</div>
				
				<button type="submit" class="btn btn-default">Enviar</button>
			</form>
		</div>
	</div>
				
	
</body>
</html>
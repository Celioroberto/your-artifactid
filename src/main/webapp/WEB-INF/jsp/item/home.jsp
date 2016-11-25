<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/5dfa548964.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<title>Listagem de itens</title>
</head>
<body>	
	
	<div id="wrapper">
	
		<div class="container">
			<h2><a href="<c:url value='/index'/>" class="btn btn-default "><i class="fa fa-arrow-left"></i></a> Listagem de itens <a href="<c:url value='/item/cadastrar'/>" class="btn btn-default pull-right"><i class="fa fa-plus"></i> Novo</a></h2>
			<hr />
			<table class="table table-hover">
				<tr>
					<th>Nome</th>					
					<th>#</th>
					<th>#</th>
				</tr>
				<c:forEach items="${itemview}" var="item" >
					<tr>
						<td> ${item.codigo} -  ${item.nome}</td>						
						<td><a href="<c:url value='/item/editar/${item.codigo}'/>" class="btn btn-default"><i class="fa fa-edit"></i></a></td>
						<td><a href="<c:url value='/item/excluir/${item.codigo}'/>"  class="btn btn-danger"><i class="fa fa-trash"></i></a></td>
					</tr>
				</c:forEach>
			
			</table>
		
		</div>
	
	</div>
	
</body>
</html>
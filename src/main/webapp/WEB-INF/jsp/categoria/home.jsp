<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>
	Mesagem! ${mensagem}
	
	<form action="<c:url value='/categoria/cadastrar'/>" method="post">
		<br/>Codigo: <input type="text" 
				name="categoria.codigo" value="${categoria.codigo}" 
				readonly="readonly"/>
		<br/>
		<br/>Categoria: <input type="text" name="categoria.nome" value="${categoria.nome}"/><br/>
				
		<br/>Quantidades pessoas: <input type="text" name="categoria.quantidade_pessoas">${categoria.quantidade_pessoas}</textarea>
		<br/>
		<br/>Quantidades crianças: <input type="text" name="categoria.quantidade_criancas">${categoria.quantidade_criancas}</textarea>
		<br/>
		<br/>Descrição: <textarea name="categoria.descricao">${categoria.descricao}</textarea>
		<br/>
		<br/>Valor diaria: <input type="text" name="categoria.valor_diaria">${categoria.valor_diaria}</textarea>
		<br/>
		<br/><input type="submit" value="Enviar" />
	</form>
	
</body>
</html>
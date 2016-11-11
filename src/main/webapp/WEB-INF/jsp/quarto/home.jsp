<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>
	Mesagem! ${mensagem}
	
	<form action="<c:url value='/quarto/cadastrar'/>" method="post">
		<br/>Codigo: <input type="text" 
				name="quarto.codigo" value="${quarto.codigo}" 
				readonly="readonly"/>
		<br/>Numero: <input type="text" 
				name="item.nome" value="${quarto.numero}"/>
		<br/>Situação: <textarea name="quarto.situacao">${quarto.situacao}</textarea>
		<br/>
		<br/><input type="submit" value="Enviar" />
	</form>
	
</body>
</html>
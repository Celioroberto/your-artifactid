<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>
	Mesagem! ${mensagem}
	
	<form action="<c:url value='/item/cadastrar'/>" method="post">
		<br/>Código: <input type="text" 
				name="item.codigo" value="${item.codigo}" 
				readonly="readonly"/>
		<br/>Nome: <input type="text" 
				name="item.nome" value="${item.nome}"/>
		<br/>Desc: <textarea name="item.descricao">${item.descricao}</textarea>
		<br/>
		<br/><input type="submit" value="Enviar" />
	</form>
	
</body>
</html>
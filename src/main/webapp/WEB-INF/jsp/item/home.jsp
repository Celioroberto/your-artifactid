<jsp:include page = "../cabecalho.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

	<form action="<c:url value='/item/cadastrar'/>" method="post">
		<br/>Codigo: <input type="text" 
				name="item.codigo" value="${item.codigo}" 
				readonly="readonly"/></br>
		<br/>Nome: <input type="text" 
				name="item.nome" value="${item.nome}"/></br>
		<br/>Desc: <textarea name="item.descricao">${item.descricao}</textarea>
		<br/>
		<br/><input type="submit" value="Enviar" />
	</form>
	
	
</body>
</html>
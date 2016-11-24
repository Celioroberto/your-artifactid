<jsp:include page = "../cabecalho.jsp" />	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
	<c:forEach items="${itemview}" var="item" >
		<br/> ${item.codigo} -  
		<a href="<c:url value='/editar/${item.codigo}'/>"> ${item.nome} </a>
		<a href="<c:url value='/excluir/${item.codigo}'/>"> -- EXCLUIR </a>
		<a href="${linkTo[ItemController].exluir }?codigo=${item.codigo}">
Modificar
</a>
		
	</c:forEach>
	
	<a href="<c:url value='/home'/>">Voltar</a>
	
	
</body>
</html>
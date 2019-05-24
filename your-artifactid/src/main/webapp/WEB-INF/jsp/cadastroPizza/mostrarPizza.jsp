<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar Pizza</title>
</head>
<body>

	<c:forEach var="p" items="${pizza}">
	<br>${p.codigo} - ${p.nome}
		<button>Excluir</button>
		<button>Editar</button>
	</c:forEach>


	<c:forEach var="t" items="${tamanhos}">
	<br>${t.tamanho} - ${t.valor}
	<button>Editar</button>
	</c:forEach>
	
		
</body>
</html>
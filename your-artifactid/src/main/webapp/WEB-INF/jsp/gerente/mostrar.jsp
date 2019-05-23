<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar Gerente</title>
</head>
<body>

	<c:forEach var="g" items="${gerentes}">
	<br>${g.codigo} - ${g.nome} - ${g.endereco} - ${g.CNPJ}
	</c:forEach>

</body>
</html>
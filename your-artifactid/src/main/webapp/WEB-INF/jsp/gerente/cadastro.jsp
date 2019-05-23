<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Gerente</title>
</head>
<body>

	<c:forEach var="g" items="${gerentes}">
		<br />${g.nome}
	</c:forEach>

	<form action='<c:url value="/gerente/enviar"/>' method="post">
		
		
		Nome: <input type="text" name="nome" /> 
		Endereco: <input type="text" name="endereco" />
		CNPJ: <input type="text" name="CNPJ" />
		
		<input type="submit" value="Salvar" />
	</form>
</body>
</html>
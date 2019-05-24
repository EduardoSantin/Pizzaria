<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Pizza</title>
</head>
<body>

	<form action='<c:url value="/cadastroPizza/enviarPizza"/>'
		method="post">


		Nome: <input type="text" name="nome" /> <input type="submit"
			value="Salvar" />
	</form>
</body>
</html>
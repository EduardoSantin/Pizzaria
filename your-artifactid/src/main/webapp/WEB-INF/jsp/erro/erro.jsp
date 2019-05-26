<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Erro ao Logar</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
</head>
<body>
		<h3>Usuário e/ou senha incoretos!</h3>
		<a href = "<c:url value = "/login"/>">Voltar</a>
</body>
</html>
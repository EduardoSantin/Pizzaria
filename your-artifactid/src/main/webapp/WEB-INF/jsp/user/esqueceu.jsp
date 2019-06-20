<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
</head>
<body>
	<form class="form-container" action="<c:url value="/user/recuperar"/>"  method="post">
		<div class="page-header text-center">
			<h2>Recuperar Senha</h2>
		</div>
		<div class="form-group">
			<label for="admin">Email</label>
			<input type="text" class="form-control" id="email" name="email" placeholder="email" required="required">
		</div>
		<button type="submit" class="btn btn-success btn-block">Entrar</button>
	</form>	
	
	

</body>
</html>
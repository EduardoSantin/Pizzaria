<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Admin</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/style.css"/>">
</head>
<body>
<div class="container-fluid conteudo">
		<div class="row">
			<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6 ">
				<form class="form-container"action="dashboard.html" method="post">
					<div class="page-header text-center">
						<h1>Login</h1>
					</div>
					<div class="form-group">
						<label for="admin">Email</label>
						<input type="Email" class="form-control" id="inputAdimin" placeholder="Admin" required="required">
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" class="form-control" id="inputpassword" placeholder="Password" required="required">
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox"> Remember me
						</label>
					</div>
					<button type="submit" class="btn btn-success btn-block">Entrar</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
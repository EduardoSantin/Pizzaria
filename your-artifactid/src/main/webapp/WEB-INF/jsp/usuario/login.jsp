<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Usuario</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/style.css"/>">
</head>
<body>
<div class="container-fluid conteudo">
		<div class="row">
			<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6 ">
				<form class="form-container" action="<c:url value="/usuario/valida"/>"  method="post">
					<div class="page-header text-center">
						<h1>Login User</h1>
						<c:if test="${Erro != null}" >
							<span class="alert" style="color:red;">
							${Erro}
						</span>
					</c:if>	
					</div>
					<div class="form-group">
						<label for="admin">Email</label>
						<input type="text" class="form-control" id="email" name="email" placeholder="email" required="required">
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" class="form-control" id="senha" name="senha" placeholder="Password" required="required">
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox"> Remember me
						</label>
					</div>
					<div class="form-group">
						<button class="btn btn-default btn-block"><a href="<c:url value="/menu"/>">Cadastre-se</a></button>
					</div>
					<button type="submit" class="btn btn-success btn-block">Entrar</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
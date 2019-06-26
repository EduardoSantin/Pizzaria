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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid conteudo">
		<div class="row">
			<div
				class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6 ">
				<form class="form-container" action="<c:url value="/user/valida"/>"
					method="post">
					<div class="page-header text-center">
						<h1>Login Usu�rios</h1>
						<c:if test="${Erro != null}">
							<span class="alert" style="color: red;"> <i
								class="fas fa-exclamation-triangle"></i> ${Erro}
							</span>
						</c:if>
					</div>
					<label for="admin">User</label> 
					<div class="form-group input-group">
						<input type="email"
							class="form-control" id="email" name="email" placeholder="User"
							required="required"><span class="input-group-addon" id="basic-addon2">ciclano@fulano.com</span>
					</div>
					<div class="form-group ">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="senha" name="senha"
							placeholder="Password" required="required">
					</div>
					<button type="submit" class="btn btn-success btn-block">Entrar</button>
				</form>
			</div>
		</div>
	</div>
	<div
		class="col-xs-offset-1 col-xs-5 col-sm-offset-2 col-sm-4 col-md-offset-3 col-md-3 col-lg-offset-4 col-lg-2">
		<a href="<c:url value="/user/cadastro"/>"><button class="btn btn-default btn-block">Cadastre-se</button></a>
	</div>
	<div
		class="col-xs-5 col-sm-4 col-md-3 col-lg-2">
		<a href="<c:url value=""/>"><button class="btn btn-default btn-block">Esqueceu a Senha?</button></a>
	</div>



</body>
</html>
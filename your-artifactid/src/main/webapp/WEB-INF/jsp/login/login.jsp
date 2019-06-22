<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<c:import url="../header_footer/header.jsp"></c:import>
<div class="container-fluid conteudo">
		<div class="row">
			<div class="col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6 ">
				<form class="form-container" action="<c:url value="/login/acessar"/>"  method="post">
					<div class="page-header text-center">
						<h1>Administração</h1>
						<c:if test="${Erro != null}" >
							<span class="alert" style="color:red;">
							<i class="fas fa-exclamation-triangle"></i>
							 ${Erro}
						</span>
					</c:if>	
					</div>
					<div class="form-group">
						<label for="admin">Email</label>
						<input type="text" class="form-control" id="login" name="login" placeholder="Admin" required="required">
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" class="form-control" id="senha" name="senha" placeholder="Password" required="required">
					</div>
					<button type="submit" class="btn btn-success btn-block">Entrar</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
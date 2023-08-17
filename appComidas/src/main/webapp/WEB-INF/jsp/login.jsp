<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>AppComidas</title>
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<br>
		
		<c:if test="${not empty mensagem}">		
			<div class="alert alert-danger">
			  <strong>Atenção!</strong> ${mensagem}
			</div>		
		</c:if>
		
		<div class="custom-card">
			<h2>Autenticação</h2>
			<br>
			<img class="card-img-top"
			src="${pageContext.request.contextPath}/static/img/login.png"
			alt="Imagem login">
			<form action="/login" method="post">
			  
			  <div class="form-group">
			    <label>E-mail:</label>
			    <input type="email" class="form-control" placeholder="Entre com o seu e-mail" name="email" value="nivaldo@gmail.com">
			  </div>

			  <div class="form-group">
			    <label>Senha:</label>
			    <input type="password" class="form-control" placeholder="Entre com a sua senha" name="senha" value="123">
			  </div>

			  <button type="submit" class="btn btn-success">Acessar</button>
			</form>
		</div>
	</div>

</body>
</html>

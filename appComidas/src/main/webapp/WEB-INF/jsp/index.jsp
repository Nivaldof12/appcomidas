<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/style.css">
<title>AppComidas</title>
</head>
<body>

	<div class="navbar">
		<c:import url="/WEB-INF/jsp/menu.jsp" />
	</div>

	<div class="content">
		<div class="custom-card">
			<div class="card shadow">
				<div class="card-header">
					<h5 class="card-title">AppComidas</h5>
					<h6 class="card-subtitle mb-2 text-muted">Cadastre alimentos e faça pedidos pelo site</h6>
				</div>
				<img class="card-img-top" src="${pageContext.request.contextPath}/static/img/restaurante.png"
					alt="Imagem Restaurante">
				<div class="card-body">
					<p>
						Olá! Seja bem-vindo ao sistema do AppComidas desenvolvido por mim.<br> 
						Esse é um sistema para gerenciamento de pedidos e cadastro e lista de produtos, simulando um 
						simples catálogo de produtos e um checkout, desenvolvido em Spring Boot. <br>
						O projeto tem como objetivo principal abordar os conceitos de
						Autenticação, Autorização, Hibernate, JPA, JSP, MySQL e muito mais. 
						O código fonte do projeto pode ser acessado clicando no <a href="https://github.com/Nivaldof12/appcomidas">link</a>.<br> <br> 
						Fique à vontade para testar o sistema e deixar sua sugestão. 
						<br> By: Nivaldo Ferreira de souza Filho
					</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Listagem de Sobremesas</title>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<h3>Listagem de Sobremesas</h3>
		
		<c:if test="${not empty mensagem}">		
			<div class="alert alert-success">
			  <strong>Atenção!</strong> ${mensagem}
			</div>		
		</c:if>

		<form action="/sobremesa" method="get">
			<button type="submit">Novo</button>
		</form>
		
		<c:if test="${empty sobremesas}">
			<h5>Não existem sobremesas cadastradas!!!</h5>
		</c:if>
	
		<c:if test="${not empty sobremesas}">
			<h5>Quantidade de sobremesas cadastradas: ${sobremesas.size()}!!!</h5>
	
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>ID</th>
			      <th>Código</th>
			      <th>Nome</th>
			      <th>Valor</th>
			      <th>Gelada</th>
			      <th>Tamanho</th>
			      <th>Sabor</th>
			      <th></th>
			    </tr>
			  </thead>
			  <tbody>

			  	<c:forEach var="s" items="${sobremesas}">
				    <tr>
				      <td>${s.id}</td>
				      <td>${s.codigo}</td>
				      <td>${s.nome}</td>
				      <td>${s.valor}</td>
				      <td>${s.gelada}</td>
				      <td>${s.tamanho}</td>
				      <td>${s.sabor}</td>
				      <td><a href="/sobremesa/${s.id}/excluir">excluir</a></td>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
		</c:if>	
	</div>
</body>
</html>
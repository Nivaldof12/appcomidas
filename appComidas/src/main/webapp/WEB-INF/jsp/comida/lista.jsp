<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Listagem de comidas</title>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<h3>Listagem de comidas</h3>
		
		<c:if test="${not empty mensagem}">		
			<div class="alert alert-success">
			  <strong>Atenção!</strong> ${mensagem}
			</div>		
		</c:if>
		
		<c:if test="${usuario.admin}">
			<form action="/comida" method="get">
				<button type="submit" class="btn btn-success">Novo</button>
			</form>
		</c:if>
		<c:if test="${empty comidas}">
			<h5>Não existem comidas cadastradas!!!</h5>
		</c:if>
	
		<c:if test="${not empty comidas}">
			<h5>Quantidade de comidas cadastradas: ${comidas.size()}!!!</h5>
	
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>ID</th>
			      <th>Código</th>
			      <th>Nome</th>
			      <th>Valor</th>
			      <th>Vegetariana</th>
			      <th>Quantidade</th>
			      <th>Ingredientes</th>
			      <c:if test="${usuario.admin}">
			      	<th></th>
			      </c:if>
			    </tr>
			  </thead>
			  <tbody>

			  	<c:forEach var="c" items="${comidas}">
				    <tr>
				      <td>${c.id}</td>
				      <td>${c.codigo}</td>
				      <td>${c.nome}</td>
				      <td>R$ ${c.valor}</td>
				      <td>${c.vegetariana}</td>
				      <td>${c.quantidade}</td>
				      <td>${c.ingredientes}</td>
				      <c:if test="${usuario.admin}">
				      	<td><a href="/comida/${c.id}/excluir"><span class="glyphicon glyphicon-remove"></span></a></td>
				      </c:if>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
		</c:if>	
	</div>
</body>
</html>
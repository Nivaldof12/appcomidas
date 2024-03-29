<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.png" type="image/x-icon">
	<title>Listagem de Bebidas</title>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<h3>Listagem de Bebidas</h3>
		
		<c:if test="${not empty mensagem}">		
			<div class="alert alert-success">
			  <strong>Atenção!</strong> ${mensagem}
			</div>		
		</c:if>
		<c:if test="${usuario.admin}">
			<form action="/bebida" method="get">
				<button type="submit" class="btn btn-success">Novo</button>
			</form>
		</c:if>
		<c:if test="${empty bebidas}">
			<h5>Não existem bebidas cadastradas!!!</h5>
		</c:if>
	
		<c:if test="${not empty bebidas}">
			<h5>Quantidade de bebidas cadastradas: ${bebidas.size()}!!!</h5>
	
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>ID</th>
			      <th>Código</th>
			      <th>Nome</th>
			      <th>Valor</th>
			      <th>Gelada</th>
			      <th>Tamanho</th>
			      <th>Marca</th>
			      <c:if test="${usuario.admin}">	
			      	<th></th>
			      </c:if>
			    </tr>
			  </thead>
			  <tbody>

			  	<c:forEach var="b" items="${bebidas}">
				    <tr>
				      <td>${b.id}</td>
				      <td>${b.codigo}</td>
				      <td>${b.nome}</td>
				      <td>R$ ${b.valor}</td>
				      <td>${b.gelada}</td>
				      <td>${b.tamanho}</td>
				      <td>${b.marca}</td>
				      <c:if test="${usuario.admin}">
				      	<td><a href="/bebida/${b.id}/excluir"><span class="glyphicon glyphicon-remove"></span></a></td>
				      </c:if>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
		</c:if>	
	</div>
</body>
</html>
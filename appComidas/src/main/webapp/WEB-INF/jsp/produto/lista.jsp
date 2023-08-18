<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.png" type="image/x-icon">
	<title>Listagem de Produtos</title>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<h3>Listagem de Produtos</h3>
		
		<c:if test="${not empty mensagem}">		
			<div class="alert alert-success">
			  <strong>Atenção!</strong> ${mensagem}
			</div>		
		</c:if>

		<c:if test="${empty produtos}">
			<h5>Não existem produtos cadastrados!!!</h5>
		</c:if>
	
		<c:if test="${not empty produtos}">
			<h5>Quantidade de produtos cadastrados: ${produtos.size()}!!!</h5>
	
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>ID</th>
			      <th>Código</th>
			      <th>Nome</th>
			      <th>Valor</th>
			      <c:if test="${usuario.admin}">
			      	<th></th>
			      </c:if>
			    </tr>
			  </thead>
			  <tbody>

			  	<c:forEach var="p" items="${produtos}">
				    <tr>
				      <td>${p.id}</td>
				      <td>${p.codigo}</td>
				      <td>${p.nome}</td>
				      <td>R$ ${p.valor}</td>
				      <c:if test="${usuario.admin}">
				      	<td><a href="/produto/${p.id}/excluir"><span class="glyphicon glyphicon-remove"></span></a></td>
				      </c:if>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
		</c:if>	
	</div>
</body>
</html>
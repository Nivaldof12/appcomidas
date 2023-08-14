<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-default" style="background-color: #FFC107; border-color: #FFC107;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="color: #fff; font-size: 24px;">AppComidas</a>
    </div>
    
    <ul class="nav navbar-nav">
      <li><a href="/" style="color: #fff;">Home</a></li>
      <c:if test="${not empty usuario}">	
        <li><a href="/usuario/lista" style="color: #fff;">Usuário</a></li>
        <li><a href="/solicitante/lista" style="color: #fff;">Solicitante</a></li>
        <li><a href="/produto/lista" style="color: #fff;">Produto</a></li>
        <li><a href="/bebida/lista" style="color: #fff;">Bebida</a></li>
        <li><a href="#" style="color: #fff;">Comida</a></li>
        <li><a href="#" style="color: #fff;">Sobremesa</a></li>
        <li><a href="/pedido/lista" style="color: #fff;">Pedido</a></li>
      </c:if>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      <c:if test="${empty usuario}">
        <li><a href="/usuario" style="color: #fff;"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="/login" style="color: #fff;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      
      <c:if test="${not empty usuario}">
        <li><a href="/logout" style="color: #fff;"><span class="glyphicon glyphicon-log-out"></span> Logout, ${usuario.nome}</a></li>
      </c:if>
    </ul>

  </div>
</nav>

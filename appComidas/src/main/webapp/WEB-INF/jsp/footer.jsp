<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/footer.css">
</head>
<body>
    <section class="footer">
        <div class="footer--container">
            <h1 class="footer--title">Copyright © 2023. Projeto para Restaurante.</h1>
            <div class="footer--links">
                <a href="https://github.com/Nivaldof12" target="_blank" class="footer--links-item">
                    <img src="${pageContext.request.contextPath}/static/img/github.png" alt="GitHub" class="icon">
                </a>
                <a href="https://www.linkedin.com/in/nivaldofsfilho/" target="_blank" class="footer--links-item">
                    <img src="${pageContext.request.contextPath}/static/img/linkedin.png" alt="LinkedIn" class="icon">
                </a>
            </div>
        </div>
    </section>
</body>
</html>
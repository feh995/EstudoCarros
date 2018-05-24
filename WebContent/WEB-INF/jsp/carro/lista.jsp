<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Carros</title>
</head>
<body>

<!------------------------------------- MENU ---------------------------------------->
<nav class="navbar navbar-default"> <!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li>
				<a href="/vraptor-blank-project/form">Cadastro</a>
			</li>
			<li>
				<a href="/vraptor-blank-project/carro/lista">Lista de Carros</a>
			</li>
			<li>
				<a href="/vraptor-blank-project/index">TESTES</a>
			</li>
		</ul>
	</div>
</nav>
<!-------------------------------- FIM - MENU --------------------------------------->










	<span>${menssagem}</span>
	<table>
		<c:forEach var="carro" items="${carroList}">
			<tr>
				<td>${carro.marca}</td>
				<td>${carro.modelo}</td>
				<td>${carro.preco}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
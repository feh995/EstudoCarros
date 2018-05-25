<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Carros</title>
</head>
<body>

<!------------------------------------- MENU ---------------------------------------->
<nav class="navbar navbar-expand-sm bg-light navbar-light">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="/vraptor-blank-project/form">Cadastro</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/vraptor-blank-project/carro/lista">Lista de Carros</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/vraptor-blank-project/index">TESTES</a>
    </li>
  </ul>
</nav>
<!-------------------------------- FIM - MENU --------------------------------------->

<div class="col-md-10 offset-md-1">
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">Marca</th>
      <th scope="col">Modelo</th>
      <th scope="col">Preço</th>
      <th scope="col">Dir. Hidraulica</th>
      <th scope="col">Cor</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="carro" items="${carroList}">
			<tr>
				<td>${carro.marca}</td>
				<td>${carro.modelo}</td>
				<td>${carro.preco}</td>
				<td>${carro.direcao}</td>
				<td>${carro.cor}</td>
			</tr>
		</c:forEach>
  </tbody>
</table>
</div>






	<span>${menssagem}</span>
	
</body>
</html>
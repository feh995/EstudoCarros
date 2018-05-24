<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Registro de Veiculo</title>
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






    <form action="<c:url value="/carro/adiciona" />" method="post">
		Marca: <input type="text" name="carro.marca" />
		Modelo: <input type="text" name="carro.modelo" />
		Preço: <input type="text" name="carro.preco" />
		<input type="submit" value="Adicionar" />
	</form>
	<form method="get" action="/vraptor-blank-project/carro/lista">
		<button type="submit" class="btn btn-danger">Lista</button>
	</form>
</body>
</html>
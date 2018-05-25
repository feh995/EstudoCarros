<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
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
		<span class="anchor" id="formComplex"></span>
		<hr class="my-5">
		<h3>Complex Form Example</h3>

		<!-- form complex example -->
		<div class="form-row mt-4">
			<div class="col-sm-5 pb-3">
				<label for="exampleAccount">Account #</label> <input type="text"
					class="form-control" id="exampleAccount"
					placeholder="XXXXXXXXXXXXXXXX">
			</div>
			<div class="col-sm-3 pb-3">
				<label for="exampleCtrl">Control #</label> <input type="text"
					class="form-control" id="exampleCtrl" placeholder="0000">
			</div>
			<div class="col-sm-4 pb-3">
				<label for="exampleAmount">Amount</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">$</span>
					</div>
					<input type="text" class="form-control" id="exampleAmount"
						placeholder="Amount">
				</div>
			</div>

			<div class="col-md-6 pb-3">
				<label for="exampleAccount">Color</label>
				<div class="form-group small">
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio1" value="option1"> Blue
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio2" value="option2"> Red
						</label>
					</div>
					<div class="form-check form-check-inline disabled">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio3" value="option3" disabled=""> Green
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio2" value="option4"> Yellow
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio2" value="option5"> Black
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio2" value="option6"> Orange
						</label>
					</div>
				</div>
			</div>
			<div class="col-md-6 pb-3">
				<label for="exampleMessage">Message</label>
				<textarea class="form-control" id="exampleMessage"></textarea>

			</div>

		</div>
	</div>

	<form action="<c:url value="/carro/adiciona" />" method="post">
		 
		Marca:
		<select value="carro.marca" name="carro.marca" type="text">
			<c:forEach var="marca" items="${marcasList}">
				<option>${marca.nome}</option>
			</c:forEach>
		</select>
		Modelo: <input type="text" name="carro.modelo" />
		Preço: <input type="text" name="carro.preco" />
		Direção Hidraulica
		<label class="btn btn-info">
				<input type="checkbox" autocomplete="off" name="carro.direcao">
				<span class="glyphicon glyphicon-ok"></span>
			</label>	
		<input type="submit" value="Adicionar" />
	</form>
	<form method="get" action="/vraptor-blank-project/carro/lista">
		<button type="submit" class="btn btn-danger">Lista</button>
	</form>
	</div>

	</div>
</body>
</html>
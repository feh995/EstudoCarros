<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>
	Estudo de VRaptor.
	Sistema de carros.
</body>
</html>





<form action="<c:url value="/carro/adiciona" />" method="post">

<c:forEach var="carro" items="${carroList}">
			<tr>
				<td>${carro.marca}</td>

<select name="country">
   <c:forEach items="${countries}" var="country">
       <option value="${country.code}" ${param.country eq country.code ? 'selected' : ''}>${country.name}</option>
   </c:forEach>
</select>
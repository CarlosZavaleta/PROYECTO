<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MESSAGE</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-4">
		<div class="card">
			<div class="card-body">
				<div class="${typo}" role="alert">${Mensaje}!</div>
				<c:if test="${typo =='alert alert-success'}">
					<a href="/listar" class="btn btn-outline-primary">Volver</a>
				</c:if>
				<c:if test="${typo =='alert alert-danger'}">
				<a href="/" class="btn btn-outline-primary">Intentar de Nuevo</a>
				</c:if>
			</div>
		</div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<title>PRINCIPAL</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a style="margin-left: 10px; border: none"
					class="btn btn-outline-light" href="#"><i class="fa fa-home"></i>
						Home</a></li>
				<li class="nav-item"><a style="margin-left: 10px; border: none"
					class="btn btn-outline-light"
					href="/listar"><i
						class="fa fa-parking"></i>Usuarios</a></li>
			</ul>
		</div>
		<div class="">
			<a href="/salir" class="btn btn-outline-light">Salir</a>
		</div>
	</nav>
	<div class="container mt-4">
				<a class="btn btn-outline-success" href="/new">Nuevo Usuario</a>
				<br>
				<br>
				<div class="card text-center">					
					<div class="card-body">
						<table class="table table-hover table-responsive">
							<thead>
								<tr>
									<th>#</th>
									<th>DNI</th>
									<th>NOMBRES</th>
									<th>APELLIDOS</th>
									<th>TELEFONO</th>
									<th>CORREO</th>
									<th>PASWORD</th>
									<th>E.CIVIL</th>
									<th>PERFIL</th>
									<th>ACCIONES</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="us" items="${usuarios}">
									<tr>
										<td>${us.iduser}</td>										
										<td>${us.dni}</td>
										<td>${us.nombres}</td>
										<td>${us.apellidos}</td>
										<td>${us.telefono}</td>
										<td>${us.correo}</td>										
										<td>${us.password}</td>
										<td>${us.estadoCivil}</td>
										<td>${us.perfil}</td>
										<td class="d-flex">
											<a class="btn btn-warning" href="/editar/${us.iduser}"><i class="fas fa-user-edit"></i></a>
											<a class="btn btn-danger ml-1" href="/delete/${us.iduser}"><i class="fas fa-trash-alt"></i></a>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>	
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
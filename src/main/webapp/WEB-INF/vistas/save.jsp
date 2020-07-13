<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SAVE</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a style="margin-left: 10px; border: none"
					class="btn btn-outline-light" href="#"><i class="fa fa-home"></i>
						Home</a></li>
				<li class="nav-item"><a style="margin-left: 10px; border: none"
					class="btn btn-outline-light" href="/listar"><i class="fa fa-parking"></i>Usuarios</a></li>
			</ul>
		</div>
		<div class="">
			<a href="/salir" class="btn btn-outline-light">Salir</a>
		</div>
	</nav>
	<div class="container mt-4">
		<div class="">
			<div class="card">
			<form action="/save" method="POST">
				<div class="card-body">
					<div class="row">
						<div class="form-group col-sm-4">
							<label>Dni</label> 
							 <input type="text" value=""  name="dni" class="form-control">
						</div>
						<div class="form-group col-sm-4">
							<label>Nombres</label> 
							<input type="text" value=""	name="nombres" class="form-control">
						</div>
						<div class="form-group col-sm-4">
							<label>Apellidos</label>
							<input type="text" value=""	name="apellidos" class="form-control">
						</div>
						<div class="form-group col-sm-4">
							<label>Telefono</label>
							<input type="text" value=""	name="telefono" class="form-control">
						</div>
						<div class="form-group col-sm-4">
							<label>Estado Civil</label> 
							<select class="form-control" name="estadoCivil">
								<option value="0">Seleccionar</option>
								<option value="1">SOLTERO</option>
								<option value="2">CASADO</option>
								<option value="3">DIVORCIADO</option>
							</select>
						</div>
						<div class="form-group col-sm-4">
							<label>Correo</label> 
							<input type="email" value="" name="correo" class="form-control">
						</div>
						<div class="form-group col-sm-4">
							<label>Password</label> 
							<input type="text" value="" name="pass" class="form-control">
						</div>
						
						<div class="form-group col-sm-4">
							<label>Perfil</label> 
							<select class="form-control" name="perfil">
								<option value="0">Seleccionar</option>
								<option value="1">ADMINISTRADOR</option>
								<option value="2">USUARIO</option>
							</select>
						</div>
					</div>
					<input type="submit" name="accion" value="Save"
						class="btn btn-primary">
						<a href="/listar">Volver</a>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
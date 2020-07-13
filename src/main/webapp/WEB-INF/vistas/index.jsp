<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <title>Login Web</title>
</head>
<body>
	<div class="container mt-4 col-lg-4">
		<div class="card col-sm-10">
			<div class="card-body">
				<form class="form-sign" action="/Validar" method="POST">
					<div class="form-group text-center">
						<img src="img/login.png" alt="70" width="170" /> <label>Bienvenidos
							al Sistema</label>
					</div>
					<div class="form-group">
						<label>Correo:</label> <input type="email" name="correo" id="correo"
							placeholder="arturo@gmail.com" required="required" class="form-control">
					</div>
					<div class="form-group">
						<label>Password:</label> <input type="password" name="pass" id="pass"
							placeholder="12345678" required="required" class="form-control">
					</div>
					<input type="submit"  value="Ingresar"
						class="btn btn-primary btn-block">
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  </body>
</html>
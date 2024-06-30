<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login Filmes Flix</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/loginimage.png" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Ainda não tem conta? Clique aqui!</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Entrar</h2>
						<!-- Estará sendo chamado em LoginServlet em doPost-->
						<form method="post" action="logins" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="email" id="email"
									placeholder="Seu email" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Senha" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Lembre-me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" style="background-color:#374d62" value="Login" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">ou logue com:</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<!--sweetalert é uma biblio JavaScript para criar alerta pop-up-->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">

		<!--JavaScript obtém o valor do atributo "status" do campo oculto usando 
		o método getElementById e armazena-o na variável status-->
		
		<!--Não está retornando a mensagem de erro!!-->
		var status = document.getElementById("status").value;
	    if(status == "failed"){
	        swal("Sinto muito", "Email ou Senha Incorreto!", "error");
	        document.getElementById("status").value = "";
	    } else if(status == "error") {
	        swal("Erro", "Ocorreu um erro no servidor. Por favor, tente novamente mais tarde.", "error");
	    
	</script>
	
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
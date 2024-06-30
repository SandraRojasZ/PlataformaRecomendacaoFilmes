<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Cadastro Filmes Flix</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<!--Em ResitroServlet se terá o status sucesso ou falha -->
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Cadastro</h2>
						<!-- Estará sendo chamado em RegistroServlet em doPost-->
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Seu Nome" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Seu Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Senha" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repita sua senha" />
							</div>

							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>Eu
									concordo com todos os <a href="#" class="term-service">Termos
										de uso</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" style="background-color: #374d62"
									value="Registrar-me" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/inside-out-emotions.png" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">Eu tenho
							cadastro</a><br> <a href="index.jsp" class="signup-image-link">Retornar
							a página inicial</a>
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
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Parabéns", "Conta Registrada com Sucesso!", "success");
		}
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
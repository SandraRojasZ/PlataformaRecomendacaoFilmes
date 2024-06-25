
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Adicionar Filmes Flix</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
	
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />


<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">

</head>
<body id="page-top">

	<!--Em AddMovieServlet se ter� o status sucesso ou falha -->
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Adicionar Filmes</h2>
						<!-- Estar� sendo chamado em AddMovieServlet em doPost-->
						<form method="post" action="AddMovieServlet" class="register-form"
							id="register-form">

							<div class="form-group">
								<label for="name"><i class=""></i></label> <input type="text"
									name="titulo" id="titulo"
									placeholder="Insira o t�tulo do filme" />
							</div>
							<div class="form-group">
								<label for="name"><i class=""></i></label> <input type="text"
									name="diretor" id="diretor"
									placeholder="Nome do Diretor do filme" />
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1"> </label> <input
									type="file" name="fotoNome" class="form-control-file"
									id="exampleFormControlFile1">
							</div>

							<div class="form-group">
								<label for="exampleFormControlSelect1"></label> <select
									class="form-control" name="genero"
									id="exampleFormControlSelect1">
									<option>Selecione o G�nero</option>
									<option>Anima��o</option>
									<option>Drama</option>
									<option>Terror</option>
									<option>A��o</option>
									<option>Romance</option>
									<option>Fic��o Cient�fica</option>
									<option>RPG eletr�nico</option>
									<option>Document�rio</option>
								</select>
							</div>

							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>Eu
									concordo com todos os <a href="#" class="term-service">Termos
										de direitos autorais</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Adicionar" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>						
						<a action="admin.jsp" class="signup-image-link">Home</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>

	<!--sweetalert � uma biblio JavaScript para criar alerta pop-up-->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Parab�ns", "Filme Adicionado com Sucesso!", "success");
		}
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
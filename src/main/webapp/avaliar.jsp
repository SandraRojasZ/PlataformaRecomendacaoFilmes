<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Busca e Avaliação de Filmes</title>

<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">
</head>

<body>
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Filmes Flix</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="index.html">Home</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="avaliar.jsp">Avaliar</a></li>

					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#footer">Contato</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="login.jsp">Sair</a></li>


				</ul>
			</div>
		</div>
	</nav>
	<br>

	<!-- Main Content -->
	<div class="container mt-5 pt-5">
	
		<!-- Formulário de Busca -->
		<div class="search-box p-4 bg-light rounded shadow-sm">
			<h2 class="text-center">Buscar Filmes</h2>
			<form id="search-form" method="post" action="resul_busca.jsp">
				<div class="mb-3">
					<input type="text" id="search-query" name="buscar"
						class="form-control"
						placeholder="Digite título, diretor ou gênero ou média da avaliação"
						required>
				</div>
				<div class="text-center">
					<button type="submit" style="background-color: #374d62"
						class="btn btn-primary">Buscar</button>
				</div>
			</form>
			<div class="search-results mt-3" id="search-results"></div>
		</div>

		<!-- Formulário de Avaliação -->
		<div class="review-box mt-5 p-4 bg-light rounded shadow-sm">
			<h2 class="text-center">Avaliar Filme</h2>
			<form id="review-form" action="CalculoAvalServlet" method="post">
				<div class="mb-3">
					<input type="text" name="titulo" id="movie-title"
						class="form-control" placeholder="Título do Filme" required>
				</div>
				<div class="mb-3">
					<select name="nota" id="movie-rating" class="form-select" required>
						<option value="" disabled selected>Nota (0 a 10)</option>
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
				</div>
				<div class="text-center">
					<button type="submit" style="background-color: #374d62"
						class="btn btn-primary">Enviar Avaliação</button>
				</div>
			</form>
		</div>
	</div>
	<br>

	<!--sweetalert é uma biblio JavaScript para criar alerta pop-up-->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Obrigada", "Sua avaliação foi registrada com sucesso!",
					"success");
		}
	</script>

	<!-- Footer-->
	<footer class="footer text-center" id=footer>
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Localização</h4>
					<p class="lead mb-0">Presente em todos os sofás quentinhos...</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Redes Sociais</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">Sobre Filmes Flix</h4>
					<p class="lead mb-0">
						Descubra uma vasta coleção de filmes para assistir. Navegue por
						diferentes gêneros e encontre seu próximo filme favorito.</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Filmes Flix 2024</small>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies (e.g., Popper.js, jQuery) -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>
</html>

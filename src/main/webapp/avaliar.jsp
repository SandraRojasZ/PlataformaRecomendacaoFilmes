<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Busca e Avaliação de Filmes</title>
<style>
body {
	font-family: Arial, sans-serif;
	padding: 20px;
	background-color: #f8f9fa;
}

.container {
	max-width: 800px;
	margin: 0 auto;
}

.search-box, .review-box {
	margin-bottom: 20px;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 8px;
	background-color: #fff;
}

.search-box input, .review-box input, .review-box select {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 4px;
}

.search-box button, .review-box button {
	padding: 10px 20px;
	border: none;
	background-color: #007bff;
	color: #fff;
	border-radius: 4px;
	cursor: pointer;
}

.search-results img {
	max-width: 100%;
	height: auto;
	display: block;
	margin: 10px 0;
}
</style>
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
</head>
<body>
	<!--Em CalculoAvalServlet se terá o status sucesso ou falha -->
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<div class="container">

		<div class="search-box">
			<h2>Buscar Filmes</h2>

			<form id="search-form"  method="post" action="busca.jsp"> 
				<input type="text" id="search-query" name="buscar"
					placeholder="Digite título, diretor ou gênero ou média da avaliação"
					required>
				<button type="submit">Buscar</button>
			</form>

			<div class="search-results" id="search-results"></div>
		</div>

		<div class="review-box">
			<h2>Avaliar Filme</h2>

			<form id="review-form" action="CalculoAvalServlet" method="post">
				<input type="text" name="titulo" id="movie-title"
					placeholder="Título do Filme" required> <select name="nota"
					id="movie-rating" required>

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
				<button type="submit">Enviar Avaliação</button>

			</form>
		</div>
	</div>

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

</body>
</html>

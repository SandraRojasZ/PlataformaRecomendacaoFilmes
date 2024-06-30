<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
if (session.getAttribute("name") == null) {
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Resultado da Busca</title>
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

<body id="page-top">
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
						class="nav-link py-3 px-0 px-lg-3 rounded" href="index.html">HOME</a></li>
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

	<div class="container mt-5">
		<h1 class="mb-4">Resultados da Busca</h1>
		<div class="results">
			<%
			String searchQuery = request.getParameter("titulo");
			if (searchQuery != null && !searchQuery.trim().isEmpty()) {
				try {
					// Fazer a conexão com o Banco de Dados
					Connection conecta;
					PreparedStatement st;
					Class.forName("com.mysql.cj.jdbc.Driver");
					conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/filmes", "root", "");

					// Listar os dados da tabela cad_peli do banco de dados
					String sql = "SELECT titulo, diretor, genero, media FROM cad_peli WHERE titulo LIKE ?";
					st = conecta.prepareStatement(sql);
					String searchPattern = "%" + searchQuery + "%";
					st.setString(1, searchPattern);

					ResultSet rs = st.executeQuery();

					// Exibir os resultados
					boolean found = false;

					while (rs.next()) {
				found = true;
			%>
			<div class="card mb-3">
				<div class="card-body">
					<h5 class="card-title">
						Avaliação realizada com Sucesso!
					</h5>
					<p class="card-text">
						Título:
						<%=rs.getString("titulo")%></p>
					<p class="card-text">
						Diretor:
						<%=rs.getString("diretor")%></p>
					<p class="card-text">
						Gênero:
						<%=rs.getString("genero")%></p>
					<p class="card-text">
						Média:
						<%=rs.getString("media")%></p>
				</div>
			</div>
			<%
			}

			if (!found) {
			%>
			<div class="alert alert-warning" role="alert">
				Nenhum resultado encontrado para:
				<%=searchQuery%>
			</div>
			<%
			}

			rs.close();
			st.close();
			conecta.close();
			} catch (Exception e) {
			%>
			<div class="alert alert-danger" role="alert">
				Erro:
				<%=e.getMessage()%>
			</div>
			<%
			}
			} else {
			%>
			<div class="alert alert-warning" role="alert">Por favor, insira
				um termo de busca.</div>
			<%
			}
			%>
		</div>
	</div>

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

	<!-- Core theme JavaScript (includes Bootstrap) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
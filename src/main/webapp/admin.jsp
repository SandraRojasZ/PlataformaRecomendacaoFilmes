<%
if (session.getAttribute("name") == null) {
	response.sendRedirect("login.jsp");
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
<title>Filmes Flix</title>
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
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Ver
							Todos</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="AdicionarServlet">Adicionar
							Filmes</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Saiba Mais</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="EntrarServlet">Sair</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="entrar"><%=session.getAttribute("name")%></a></li>

				</ul>
			</div>
		</div>
	</nav>
		<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center" style="background-image: url('assets/img/cinema.jpg');">	<div class="container d-flex align-items-center flex-column">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Descubra o melhor do cinema aqui!</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Seja voc� um cin�filo �vido ou apenas algu�m que n�o quer perder seu tempo assistindo a mais um filme gen�rico da Netflix, nossa plataforma � o seu guia definitivo para descobrir os melhores filmes para assistir!</p>
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Cat�logo</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">
				<!-- Portfolio Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal1">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/divertidamente.png"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal2">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/walle.png"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal3">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/westworld2_p7sq.png"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 4-->
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal4">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/toystory.jpeg"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 5-->
				<div class="col-md-6 col-lg-4 mb-5 mb-md-0">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal5">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/fallout-tv.jpg"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 6-->
				<div class="col-md-6 col-lg-4">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal6">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/trabalhointerno.jpg"
							alt="..." />
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-secondary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">Sobre</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">A democratiza��o dos filmes, seriados e
						document�rios permite que uma ampla gama de narrativas e vozes
						seja acess�vel a todos, promovendo a inclus�o cultural e a
						diversidade de perspectivas em nossa sociedade.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">Com a democratiza��o do acesso a conte�dos
						audiovisuais, mais pessoas podem desfrutar de entretenimento e
						educa��o de qualidade, independentemente de suas condi��es
						socioecon�micas, ampliando o horizonte cultural e o conhecimento
						da popula��o.</p>
				</div>
			</div>
			<!-- About Section Button-->
			<div class="text-center mt-4">
				<a class="btn btn-xl btn-outline-light"
					href="https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.filmelier.com/br/assistir-filmes-online&ved=2ahUKEwigt4fb_PeGAxWVLbkGHUeQDCgQFnoECBgQAQ&usg=AOvVaw0vhqZ1ucMPkWNcwnItez2T"> <i
					class="fas fa-download me-2"></i> Assista filmes online de gra�a!
				</a>
			</div>
		</div>
	</section>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Saiba mais</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					
					<iframe width="800" height="515" src="https://www.youtube.com/embed/8bnHF2jq2EE?si=PlVRP0n7husGxCMm" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Localiza��o</h4>
					<p class="lead mb-0">
						Presente em todos os sof�s quentinhos...
					</p>
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
						Descubra uma vasta cole��o de filmes para assistir. Navegue por diferentes g�neros e encontre seu pr�ximo filme favorito.</a>
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
	<!-- Portfolio Modals-->
	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Divertidamente
									</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/divertidamente.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">
"Divertidamente" (Inside Out) � um filme de anima��o da Pixar que explora as complexidades das emo��es humanas atrav�s da jornada de Riley, uma jovem que enfrenta mudan�as significativas em sua vida familiar ao se mudar para uma nova cidade. O filme se passa principalmente na mente de Riley, onde suas emo��es - Alegria, Tristeza, Medo, Raiva e Nojinho - s�o personificadas como personagens que influenciam suas a��es e mem�rias.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Fechar
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">WALL-E</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/walle.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4"> Em um planeta Terra abandonado e coberto de lixo, um pequeno rob� chamado WALL-E passa seus dias compactando res�duos. Quando conhece EVE, uma sonda enviada para procurar sinais de vida, WALL-E embarca em uma jornada c�smica que pode oferecer esperan�a para o futuro da humanidade.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Fechar
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 3-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Westworld</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/westworld2_p7sq.jpg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Em um parque tem�tico futurista, os visitantes podem viver suas fantasias em um mundo habitado por androides ultra-realistas. Conforme as linhas entre realidade e simulacro se dissipam, quest�es sobre �tica, consci�ncia artificial e livre-arb�trio surgem, levando a consequ�ncias imprevis�veis.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Fechar
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 4-->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" aria-labelledby="portfolioModal4" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Toy Story</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/toystory.jpeg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Este cl�ssico da anima��o segue a vida dos brinquedos de Andy, especialmente Woody o caub�i e Buzz Lightyear o astronauta. Eles enfrentam desafios emocionais e aventuras loucas quando s�o confrontados com mudan�as em suas vidas devido a novos brinquedos e situa��es inesperadas.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Fechar
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 5-->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Fallout</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/fallout-tv.jpg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Situado em um mundo p�s-apocal�ptico devastado pela guerra nuclear, Fallout segue a jornada de sobreviventes que exploram terras desoladas, enfrentam criaturas mutantes e lutam contra fac��es em busca de recursos escassos, enquanto tentam reconstruir a civiliza��o.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Fechar
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 6-->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" aria-labelledby="portfolioModal6" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Trabalho Interno</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/trabalhointerno.jpg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Baseado em eventos reais, este filme explora a crise financeira global de 2008, revelando os bastidores obscuros do mercado imobili�rio e financeiro dos EUA. Um grupo de investidores percebe o colapso iminente e decide lucrar com a crise, revelando a gan�ncia e a irresponsabilidade que levaram ao colapso econ�mico.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Fechar
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
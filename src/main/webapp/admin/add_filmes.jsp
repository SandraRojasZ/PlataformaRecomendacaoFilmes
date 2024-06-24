<%  

if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp"); 
} 

%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add Filmes Flix</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #f0f2f2;">
<!--Em ResitroServlet se terá o status sucesso ou falha -->
	<%@include file="navbar.jsp" %>

			<div class="container">
				<div class="row">
					<div class="col-md-4 offset-md-4">
						<div class="card">
							<div class="card-body">
								<h4 class="text-center">Adicionar Filmes</h4>
								<form action="../add_filmes" method="post" enctype="multipart/form-data">
								
									<div class="form-group">
										<label for="exampleInputEmail1">Título do Filme</label> <input
											type="text" name="tname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
									</div>
									
									<div class="form-group">
										<label for="exampleInputEmail1">Nome do Diretor</label> <input
											type="text" name="dname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
									</div>
									
									<div class="form-group">
										<label for="inputState">Gênero</label><select
											id="inputState" name="genero" class="form-control">
											<option selected>--select--</option>
											<option value="New">Drama</option>
											<option value="New">Terror</option>
											<option value="New">Ficção</option>
											<option value="New">Comédia</option>
											<option value="New">Ação</option>
											<option value="New">Aventura</option>
										</select>
									</div>
									
									<div class="form-group">
										<label for="exampleFormControlFile1">Upload Foto</label> <input
											type="file" name="imagem" class="form-control" id="exampleFormControlFile1">
									</div>
									
									<button type="submit" class="btn btn-primary">Adicionar</button>
								</form>							
							</div>							
						</div>
				</div>
			</div>		
		</div>
		
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
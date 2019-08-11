<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CABEÇALHO</title>
<style>
.cabecalho ul {
	list-style: none;
}

.cabecalho ul li {
	background-color: #c1c1c1;
	width: 150px;
	border-radius: 5px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	float: left;
	font-family: arial;
	font-size: 18px;
}

.cabecalho ul li:hover {
	background-color: #c1c1c1;
	text-align: center;
}

.cabecalho ul ul {
	display: none;
	text-align: center;
}

.cabecalho ul li:hover>ul {
	display: block;
	position: relative;
}

.cabecalho a:link {
	color: #000000;
	text-decoration: none;
}

.cabecalho a:visited {
	color: #000000;
	text-decoration: none;
}

.cabecalho a:hover {
	color: #005dff;
	text-decoration: underline;
}
</style>
</head>
<body bgcolor="#ffffff">
	<div align="center">
		<nav class="cabecalho">
			<ul>
				<li><a href="home.jsp">HOME</a></li>
				<li><a href="#">CLIENTES</a>
					<ul>
						<li><a href="cadastroCliente.jsp">Cadastro</a></li>
						<li><a href="listaCliente.jsp">Relatório</a></li>
					</ul></li>
				<li><a href="#">ADVOGADOS</a>
					<ul>
						<li><a href="#">Cadastro</a></li>
						<li><a href="#">Relatório</a></li>
					</ul></li>
				<li><a href="#">PROCESSOS</a>
					<ul>
						<li><a href="#">Cadastro</a></li>
						<li><a href="#">Relatório</a></li>
					</ul></li>
				<li><a href="#">SAIR</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>
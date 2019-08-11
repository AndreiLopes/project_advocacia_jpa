<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CADASTRO CLIENTE</title>
<style type="text/css">
.cliente table {
	background-color: #d8d8d8;
	border-radius: 10px;
	border: solid 1px;
	line-height: 25px;
	font-size: 16px;
	font-family: arial;
	width: 75%;
	padding: 30px;
}

.cliente thead tr th {
	font-size: 20px;
	border-bottom: silver 1px;
	align-content: center;
}

.cliente thead tr td {
	font-size: 16px;
}

.cliente tbody {
	font-size: 16px;
}

.cliente tfoot tr th {
	font-size: 14px;
	border-top: solid 1px;
}

.cliente tfoot tr td {
	font-size: 14px;
}
</style>
</head>
<body bgcolor="#ffffff">
	<form action="/advocaciaJPA/ClienteServlet" method="post">
		<div align="center">
			<nav class="cliente">
				<table>
					<thead>
						<tr>
							<th colspan="2"><%@ include file="cabecalho.jsp"%>
							</th>
						</tr>
						<tr>
							<th colspan="2"><p>CADASTRO DE CLIENTES</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="hidden" name="id" value="${cliente.id}" /></td>
						</tr>
						<tr>
							<th align="left" height="30px"><label>CPF: *</label></th>
							<td><input type="text" name="cpf" required="required"
								value="${cliente.cpf}" style="border-radius: 5px;"
								maxlength="11" size="20" placeholder="xxx.xxx.xxx-xx" /></td>
						</tr>
						<tr>
							<th align="left" height="30px"><label>Nome:</label></th>
							<td><input type="text" name="nome" value="${cliente.nome}"
								style="border-radius: 5px;" maxlength="75" size="80"
								placeholder="José da Silva" /></td>
						</tr>
						<tr>
							<th align="left" height="30px"><label>E-Mail:</label></th>
							<td><input type="email" name="email" maxlength="70"
								value="${cliente.email}" size="80" style="border-radius: 5px;"
								placeholder="email@email.com" /></td>
						</tr>
						<tr>
							<th align="left" height="30px"><label>Endereço:</label></th>
							<td><input type="text" name="endereco" maxlength="75"
								value="${cliente.endereco}" style="border-radius: 5px;"
								size="80" placeholder="Rua: Endereço - 0001 - Brasília" /></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="SALVAR" style="border-radius: 5px; width: 100px;" /> <input
								type="reset" value="NOVO"
								style="border-radius: 5px; width: 100px;" /></td>
						</tr>
					</tfoot>
				</table>
			</nav>
		</div>
	</form>
</body>
</html>
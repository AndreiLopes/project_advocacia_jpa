<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.*,br.com.advocacia.dao.*,br.com.advocacia.entidade.*"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CLIENTES</title>
<style type="text/css">
.cliente table {
	background-color: #d8d8d8;
	line-height: 25px;
	font-size: 16px;
	font-family: arial;
	border-radius: 10px;
	border: solid 1px;
	width: 75%;
	border: solid 1px;
	padding: 30px;
}

.cliente thead th {
	font-size: 20px;
}

.cliente thead td {
	font-size: 16px;
}

.cliente tbody tr:nth-child(even) {
	background-color: #edf5ff;
}

.cliente tbody tr td:hover {
	color: #fff;
	background-color: #3d80df;
}
</style>
</head>
<body>
	<div align="center">
		<nav class="cliente">
			<table>
				<thead>
					<tr>
						<th colspan="7"><%@ include file="cabecalho.jsp"%>
						</th>
					</tr>
					<tr>
						<th colspan="7"><p>RELAÇÃO DE CLIENTES</th>
					</tr>
					<tr>
						<td colspan="7" align="right"><c:if
								test="${fn:length(listaCliente) > 0}">
   										${fn:length(listaCliente)} clientes registrados no Sistema!</c:if></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>CÓD</th>
						<th>CPF</th>
						<th>NOME</th>
						<th>E-MAIL</th>
						<th>ENDEREÇO</th>
						<th colspan="2">AÇÃO</th>
					</tr>
					<%
						ClienteDAO dao = new ClienteDAO();
						List<Cliente> clientes = dao.listaCliente();
						for (Cliente cliente : clientes) {
					%>
					<tr>
						<td align="center"><%=cliente.getId()%></td>
						<td align="center"><%=cliente.getCpf()%></td>
						<td><%=cliente.getNome()%></td>
						<td><%=cliente.getEmail()%></td>
						<td><%=cliente.getEndereco()%></td>
						<td align="right"><a
							href="/advocaciaJPA/ClienteServlet?acao=Alterar&id=<%=cliente.getId()%>">Alterar</a>
						<td align="right"><a
							href="/advocaciaJPA/ClienteServlet?acao=Excluir&id=<%=cliente.getId()%>">Excluir</a>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</nav>
	</div>
</body>
</html>
package br.com.advocacia.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.advocacia.dao.ClienteDAO;
import br.com.advocacia.entidade.Cliente;

@WebServlet("/ClienteServlet")
public class ClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ClienteServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String acao = request.getParameter("acao");
		String id = request.getParameter("id");
		String destinoEdicao = "cadastroCliente.jsp";
		String destinoFinal = "listaCliente.jsp";

		ClienteDAO dao = new ClienteDAO();
		Cliente cliente;
		List<Cliente> lista = new ArrayList<>();

		lista = dao.listaCliente();
		request.setAttribute("listaCliente", lista);

		if (acao.equalsIgnoreCase("Alterar")) {
			cliente = dao.buscaPeloId(Integer.parseInt(id));
			request.setAttribute("cliente", cliente);
			dao.salvaCliente(cliente);

			RequestDispatcher rd = request.getRequestDispatcher(destinoEdicao);
			 rd.forward(request, response);

		} else if (acao.equalsIgnoreCase("Excluir")) {
			cliente = dao.buscaPeloId(Integer.parseInt(id));
			dao.excluiCliente(cliente);
		}
		RequestDispatcher rd = request.getRequestDispatcher(destinoFinal);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ClienteDAO dao = new ClienteDAO();
		Cliente cliente = new Cliente();

		String id = request.getParameter("id");
		String cpf = request.getParameter("cpf");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");
		String destinoEdicao = "cadastroCliente.jsp";
		String destinoFinal = "listaCliente.jsp";

		try {
			if (id != "") {
				cliente.setId(Integer.parseInt(id));
				cliente.setCpf(Long.parseLong(cpf));
				cliente.setNome(nome);
				cliente.setEmail(email);
				cliente.setEndereco(endereco);
				dao.salvaCliente(cliente);

				RequestDispatcher rd = request.getRequestDispatcher(destinoFinal);
				rd.forward(request, response);

			} else {
				cliente.setCpf(Long.parseLong(cpf));
				cliente.setNome(nome);
				cliente.setEmail(email);
				cliente.setEndereco(endereco);
				dao.salvaCliente(cliente);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher(destinoEdicao);
		rd.forward(request, response);
	}
}
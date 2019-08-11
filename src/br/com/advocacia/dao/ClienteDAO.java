package br.com.advocacia.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import br.com.advocacia.entidade.Cliente;

public class ClienteDAO {

	EntityManagerFactory factory;
	EntityManager manager;

	public ClienteDAO() {
		factory = Persistence.createEntityManagerFactory("advocacia_jpa");
		manager = factory.createEntityManager();
	}

	public void salvaCliente(Cliente cliente) {
		manager.getTransaction().begin();
		manager.merge(cliente);
		manager.getTransaction().commit();
		factory.close();
	}

	public void excluiCliente(Cliente cliente) {
		manager.getTransaction().begin();
		manager.remove(cliente);
		manager.getTransaction().commit();
		factory.close();
	}

	@SuppressWarnings({ "unchecked", "unused" })
	public List<Cliente> listaCliente() {
		manager.getTransaction().begin();

		Query consulta = manager.createQuery("SELECT cliente FROM Cliente cliente");
		List<Cliente> clientes = consulta.getResultList();
		for (Cliente cliente : clientes) {
		}
		manager.getTransaction().commit();
		return clientes;
	}

	public Cliente buscaPeloId(int id) {
		manager.getTransaction().begin();
		Cliente cliente = manager.find(Cliente.class, id);
		manager.getTransaction().commit();
		return cliente;
	}
}
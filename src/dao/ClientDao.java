package dao;

import beans.Client;

public interface ClientDao {

	public void insert(Client C) throws DaoException;
	
	public Client findByEmail(String email);
	
	public Client findClient(String email, String password) ;
}

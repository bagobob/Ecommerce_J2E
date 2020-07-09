package com.projet.dao;

import java.util.List;

import com.projet.beans.Client;
import com.projet.beans.Product;



public interface ProductDao {
	
	public void insert(Product P) throws DaoException;
	public void  delete(Product P) throws DaoException;
	public void  update(Product P) throws DaoException;
	public Product findbyName(String name) throws DaoException;
	public List<Product> allProduct()throws DaoException;

}

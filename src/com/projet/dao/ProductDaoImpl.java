package com.projet.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;
import com.projet.beans.Product;


public class ProductDaoImpl implements ProductDao{

	private DAOFactory daoFactory;
	private static final String SQL_INSERT = "INSERT INTO `product`(`id_product`, `name`, `Qte`, `Category`, `price`,`linkPhotoAvant`,`linkPhotoArriere`,`linkPhotoCote`) VALUES (NULL,?,?,?,?,?,?,?)";
	private static final String SQL_TROUVER = "SELECT  `name` FROM `product` WHERE name=?";
	private static final String SQL_DELETE_PAR_ID = "DELETE FROM product WHERE id = ?";
	private static final String SQL_UPDATE = "UPDATE FROM product SET name=?,Qte=?,Category=?,price=?, linkPhotoAvant=?,linkPhotoArriere=?,linkPhotoCote=? WHERE id = ?";
	private static final String SQL_ALL = "SELECT  * FROM `product` WHERE ORDER BY price";


	public ProductDaoImpl(DAOFactory daoFactory) {
		// 
		this.daoFactory = daoFactory;
	}
	@Override
	public void insert(Product P) throws DaoException {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		
		try {
			conn = daoFactory.getConnection();
			preparedStatement = conn.prepareStatement(SQL_INSERT,Statement.RETURN_GENERATED_KEYS);
			preparedStatement.getGeneratedKeys();
			preparedStatement.setString(1, P.getName());
			preparedStatement.setInt(2, P.getQte());
			preparedStatement.setString(3, P.getCategory());
			preparedStatement.setInt(4, P.getPrice());
			preparedStatement.setString(5, P.getLinkPhotoAvant());
			preparedStatement.setString(6, P.getLinkPhotoArriere());
			preparedStatement.setString(7, P.getLinkPhotoCote());
			
			int statut = preparedStatement.executeUpdate();
			  
			if ( statut == 0 ) {
				throw new DaoException( 
						"echec de la crï¿½ation de l'utilisateur, aucune ligne ajoutÃ©e dans la table." );
			}
			rs = preparedStatement.getGeneratedKeys();
			if ( rs.next() ) {
			/* Puis initialisation de la propriï¿½tï¿½ id du bean Client avec sa valeur */
				P.setId_product( rs.getInt( 1 ) );
			} else {
				throw new DaoException( "ï¿½chec de la crï¿½ation de l'utilisateur en base, aucun ID auto-gï¿½nï¿½rï¿½ retournï¿½." );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(Product P) throws DaoException {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		
		try {
			conn = daoFactory.getConnection();
			preparedStatement = conn.prepareStatement(SQL_DELETE_PAR_ID);
			preparedStatement.setInt(1, P.getId_product());
			preparedStatement.setString(2, P.getName());
			preparedStatement.setInt(3, P.getQte());
			preparedStatement.setString(4, P.getCategory());
			preparedStatement.setInt(5, P.getPrice());
			preparedStatement.setString(6, P.getLinkPhotoAvant());
			preparedStatement.setString(7, P.getLinkPhotoArriere());
			preparedStatement.setString(8, P.getLinkPhotoCote());
			
			int statut = preparedStatement.executeUpdate();
			  
			if ( statut == 0 ) {
				throw new DaoException( 
						"Échec de la modification de la notification, aucune ligne modifiée dans la table");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void update(Product P) throws DaoException {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		
		try {
			conn = daoFactory.getConnection();
			preparedStatement = conn.prepareStatement(SQL_UPDATE);
			preparedStatement.setInt(1, P.getId_product());
			
			int statut = preparedStatement.executeUpdate();
			  
			if ( statut == 0 ) {
				throw new DaoException( 
						"Échec de la suppression de la notification, aucune ligne supprimée dans la table.");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Product findbyName(String name) throws DaoException {
		// TODO Auto-generated method stub
		Connection connexion=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultat=null;
		Product produit=null;
		try {
			connexion=daoFactory.getConnection();
			preparedStatement=connexion.prepareStatement(SQL_TROUVER);
			
			preparedStatement.setString(1, name);
			resultat=preparedStatement.executeQuery();
			
			if(resultat.next()) {
				produit=new Product();
				produit.setName(resultat.getString("name"));
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//fermeture de la connexion
			try {
				if(resultat != null)
					resultat.close();
				if(preparedStatement !=null)
					preparedStatement.close();
				if(connexion !=null)
					connexion.close();
			}catch (SQLException ignore) {
			}
		}	
	
		return produit;
	}
	

	@Override
	public List<Product> allProduct() throws DaoException {
		// TODO Auto-generated method stub
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		ArrayList<Product>produits = new ArrayList<>();
		try {
			/* Récupération d'une connexion depuis la Factory */
			connexion = daoFactory.getConnection();
			preparedStatement=connexion.prepareStatement(SQL_ALL);

			resultSet = preparedStatement.executeQuery();
			/* Parcours des lignes de données de l'éventuel ResulSet retourné */
			while ( resultSet.next() ) {
				produits.add( map( resultSet ) );
			}
		} catch ( SQLException e ) {
			throw new DaoException( e );
		} finally {
			try {
				if(resultSet != null)
					resultSet.close();
				if(preparedStatement !=null)
					preparedStatement.close();
				if(connexion !=null)
					connexion.close();
			}catch (SQLException ignore) {
			}
		} 
		return produits;
		
	}
	private Product map(ResultSet resultSet) throws SQLException {
		// TODO Auto-generated method stub
		Product produit = new Product();
		produit.setId_product(resultSet.getInt("id_product"));
		produit.setName(resultSet.getString("name"));
		produit.setQte(resultSet.getInt("Qte"));
		produit.setCategory(resultSet.getString("Category"));
		produit.setPrice(resultSet.getInt("price"));
		produit.setLinkPhotoAvant(resultSet.getString("linkPhotoAvant"));
		produit.setLinkPhotoArriere(resultSet.getString("linkPhotoArriere"));
		produit.setLinkPhotoCote(resultSet.getString("linkPhotocote"));
		return produit;
	}

}

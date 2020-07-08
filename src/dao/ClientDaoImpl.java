package dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import beans.Client;



public class ClientDaoImpl implements ClientDao {

	private DAOFactory daoFactory;
	private static final String SQL_INSERT = "INSERT INTO Client  VALUES (?,?,?,?,?,?,?,?,?,?;?)";

	public ClientDaoImpl(DAOFactory daoFactory) {
		// 
		this.daoFactory = daoFactory;
	}

	@Override
	public void insert(Client C) throws DaoException {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		
		try {
			conn = daoFactory.getConnection();
			preparedStatement = conn.prepareStatement(SQL_INSERT);
			preparedStatement.setInt(1, C.getId_user());
			preparedStatement.setInt(2, C.getId_client());
			preparedStatement.setString(3, C.getName());
			preparedStatement.setString(4, C.getFirstName());
			preparedStatement.setString(5, C.getStreet());
			preparedStatement.setString(6, C.getTown());
			preparedStatement.setInt(7, C.getPostal());
			preparedStatement.setString(8, C.getNum_tel());
			preparedStatement.setString(9, C.getEmail());
			preparedStatement.setString(10, C.getPassword());
			preparedStatement.setInt(11, C.getId_panier());
			
			int statut = preparedStatement.executeUpdate();
			if ( statut == 0 ) {
				throw new DaoException( 
						"Échec de la création de l'utilisateur, aucune ligne ajoutée dans la table." );
			}
			rs = preparedStatement.getGeneratedKeys();
			if ( rs.next() ) {
			/* Puis initialisation de la propriété id du bean Client avec sa valeur */
				C.setId_client( rs.getInt( 1 ) );
			} else {
				throw new DaoException( "Échec de la création de l'utilisateur en base, aucun ID auto-généré retourné." );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Client findByEmail(String email) {
		return null;
		// TODO Auto-generated method stub

	}

	@Override
	public Client findClient(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}

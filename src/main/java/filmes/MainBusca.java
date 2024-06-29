package filmes;

import java.sql.Connection;
import java.sql.SQLException;

public class MainBusca {

	public static void main(String[] args) throws SQLException{
		
		Connection con = Database.getConnection();
		
		if(con != null) {
			System.out.println("Conexão a base de dados com sucesso!");
		}

	}

}

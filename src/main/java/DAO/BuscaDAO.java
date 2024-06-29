package DAO;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import filmes.Busca;
import filmes.Filme;

public interface BuscaDAO{
	
	
	List<Busca> getAll() throws SQLException;
}



  

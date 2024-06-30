package com.filmesflix;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** A classe � um servlet e mapeia a URL "/register". 
 * Quando o usu�rio acessar essa URL, esse servlet ser� executado.**/
@WebServlet("/register")

/** Declara a classe RegistroServlet que herda de HttpServlet. 
 * Isso significa que ela � um servlet capaz de tratar requisi��es HTTP.**/
public class RegistroServlet extends HttpServlet {
	// Uma constante usada pelo servlet para prop�sitos internos.
    private static final long serialVersionUID = 1L;

    //Esse m�todo � chamado quando o usu�rio envia o cadastro em registraton.jsp usando o m�todo HTTP POST. 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	// Vari�veis que armazenar�o os dados do usu�rio vindos do formul�rio registraton.jsp
        String nome = request.getParameter("name");
        String email = request.getParameter("email");
        String senha = request.getParameter("pass");
        String tipoUsuario = "usu�rio"; // Valor autom�tico
        
        // RequestDispatcher dispatcher: Objeto usado para direcionar o usu�rio para uma p�gina JSP ap�s processar o cadastro.
        RequestDispatcher dispatcher = null;
        
        //Vari�vel que armazenar� a conex�o com o banco de dados.
        Connection con = null;
        
        try {
        	// Driver JDBC: para que o programa Java se comunique com o bando de dados do mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Tentativa de conex�o
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/filmes?useSSL=false", "root", "");

            // Verificar se o email j� existe no banco de dados
            PreparedStatement checkEmailStmt = con.prepareStatement("SELECT * FROM usuario WHERE email = ?");
            // Valor da vari�vel email obtida do formul�rio.
            checkEmailStmt.setString(1, email);
            
            /**Executa a consulta SQL preparada e armazena o resultado em um objeto ResultSet.
             * executeQuery() - Executa a consulta preparada e retorna um conjunto de resultados da tabela
             *  caso existam linhas correspondentes.**/
            ResultSet rs = checkEmailStmt.executeQuery();
            
            if (rs.next()) {
                // Email j� existe
                request.setAttribute("status", "email_exists");
                // o objeto request.dispatcher direcionar� para a p�gina login.jsp
                dispatcher = request.getRequestDispatcher("login.jsp");
            } else {
                // Email n�o existe, inserir novo registro
                PreparedStatement pst = con.prepareStatement("INSERT INTO usuario(nome, senha, email, tipo_user) VALUES(?,?,?,?)");
                pst.setString(1, nome);
                pst.setString(2, senha);
                pst.setString(3, email);
                pst.setString(4, tipoUsuario);

                // Executa a consulta de inser��o e armazena o n�mero de linhas afetadas pela consulta
                int rowCount = pst.executeUpdate();
                
                dispatcher = request.getRequestDispatcher("registration.jsp");
                
                if (rowCount > 0) {
                    request.setAttribute("status", "success");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                } else {
                    request.setAttribute("status", "failed");
                }
            }

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        /*Sempre ser� executado, independente de erros. 
         * � usado para fechar a conex�o com o banco de dados, evitando que recursos fiquem abertos.*/
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

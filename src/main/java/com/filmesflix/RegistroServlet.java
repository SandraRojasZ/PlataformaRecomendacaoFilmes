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

/** A classe é um servlet e mapeia a URL "/register". 
 * Quando o usuário acessar essa URL, esse servlet será executado.**/
@WebServlet("/register")

/** Declara a classe RegistroServlet que herda de HttpServlet. 
 * Isso significa que ela é um servlet capaz de tratar requisições HTTP.**/
public class RegistroServlet extends HttpServlet {
	// Uma constante usada pelo servlet para propósitos internos.
    private static final long serialVersionUID = 1L;

    //Esse método é chamado quando o usuário envia o cadastro em registraton.jsp usando o método HTTP POST. 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	// Variáveis que armazenarão os dados do usuário vindos do formulário registraton.jsp
        String nome = request.getParameter("name");
        String email = request.getParameter("email");
        String senha = request.getParameter("pass");
        String tipoUsuario = "usuário"; // Valor automático
        
        // RequestDispatcher dispatcher: Objeto usado para direcionar o usuário para uma página JSP após processar o cadastro.
        RequestDispatcher dispatcher = null;
        
        //Variável que armazenará a conexão com o banco de dados.
        Connection con = null;
        
        try {
        	// Driver JDBC: para que o programa Java se comunique com o bando de dados do mysql
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Tentativa de conexão
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/filmes?useSSL=false", "root", "");

            // Verificar se o email já existe no banco de dados
            PreparedStatement checkEmailStmt = con.prepareStatement("SELECT * FROM usuario WHERE email = ?");
            // Valor da variável email obtida do formulário.
            checkEmailStmt.setString(1, email);
            
            /**Executa a consulta SQL preparada e armazena o resultado em um objeto ResultSet.
             * executeQuery() - Executa a consulta preparada e retorna um conjunto de resultados da tabela
             *  caso existam linhas correspondentes.**/
            ResultSet rs = checkEmailStmt.executeQuery();
            
            if (rs.next()) {
                // Email já existe
                request.setAttribute("status", "email_exists");
                // o objeto request.dispatcher direcionará para a página login.jsp
                dispatcher = request.getRequestDispatcher("login.jsp");
            } else {
                // Email não existe, inserir novo registro
                PreparedStatement pst = con.prepareStatement("INSERT INTO usuario(nome, senha, email, tipo_user) VALUES(?,?,?,?)");
                pst.setString(1, nome);
                pst.setString(2, senha);
                pst.setString(3, email);
                pst.setString(4, tipoUsuario);

                // Executa a consulta de inserção e armazena o número de linhas afetadas pela consulta
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
        /*Sempre será executado, independente de erros. 
         * É usado para fechar a conexão com o banco de dados, evitando que recursos fiquem abertos.*/
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

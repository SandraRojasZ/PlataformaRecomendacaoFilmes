<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    String searchQuery = request.getParameter("buscar");
    if (searchQuery != null && !searchQuery.trim().isEmpty()) {
        try {
            // Fazer a conexão com o Banco de Dados
            Connection conecta;
            PreparedStatement st;
            Class.forName("com.mysql.cj.jdbc.Driver");
            conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/filmes", "root", "");
            
            // Listar os dados da tabela cad_peli do banco de dados
            String sql = "SELECT titulo, diretor, genero, media FROM cad_peli WHERE titulo LIKE ? OR diretor LIKE ? OR genero LIKE ? OR media LIKE ?";
            st = conecta.prepareStatement(sql);
            String searchPattern = "%" + searchQuery + "%";
            st.setString(1, searchPattern);
            st.setString(2, searchPattern);
            st.setString(3, searchPattern);
            st.setString(4, searchPattern);
            
            ResultSet rs = st.executeQuery();
            
            // Exibir os resultados
            boolean found = false;
            while (rs.next()) {
                out.println("Título: " + rs.getString("titulo") + "<br>");
                out.println("Diretor: " + rs.getString("diretor") + "<br>");
                out.println("Gênero: " + rs.getString("genero") + "<br>");
                out.println("Média: " + rs.getString("media") + "<br><br>");
               
            }
            
            rs.close();
            st.close();
            conecta.close();
        } catch (Exception e) {
            out.println("Erro: " + e.getMessage());
        }
    } else {
        out.println("Por favor, insira um termo de busca.");
    }
%>

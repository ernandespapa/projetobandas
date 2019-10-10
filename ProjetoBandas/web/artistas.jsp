<%-- 
    Document   : index
    Created on : 23/09/2019, 14:07:04
    Author     : a
--%>

<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Artistas - iTons</title>
    </head>
    <body>
        <h1> Pagina Inicial</h1>
       
        <h2> 
            <a href="index.jsp"> Home </a> ||
            <a href="artistas.jsp"> Artistas </a> ||
            <a href="discos.jsp"> Discos </a> ||
            <a href="musicas.jsp"> Musicas </a> ||
        </h2>
        <hr/>
        
        <h1> Artistas</h1>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Integrantes</th>
                <th>Gênero</th>
                <th>Discos</th>
            </tr>
            
            <%for (Artista artista: Db.getArtistas()){ %>
            <tr>
                <td><%= artista.getNome() %></td>
                <td>
                    <%for(String integrante: artista.getIntegrantes()){%>
                    <%= integrante %> <br/>
                    <%}%>
                </td>
                <td><%= artista.getGênero() %></td>
                <td><%= artista.getDiscos().size() %></td>
                
            </tr>
            <%}%>
        </table>
        
    </body>
</html>

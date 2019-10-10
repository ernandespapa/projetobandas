<%-- 
    Document   : index
    Created on : 23/09/2019, 14:07:04
    Author     : a
--%>

<%@page import="br.com.fatecpg.music.Disco"%>
<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Discos - iTons</title>
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
        
        <h1> Discos</h1>
        
        <table border="1">
            <tr>
                <th>Artista</th>
                <th>Nome</th>
                <th>Gravadora</th>
                <th>Ano</th>
                <th>Músicas</th>
            </tr>
            
            <%for (Disco disco: Db.getDiscos()){ %>
            <tr>
                <td><%= disco.getArtista().getNome() %></td>
                <td><%= disco.getNome() %></td>
                <td><%= disco.getGravadora() %></td>
                <td><%= disco.getAno() %></td>
                <td><%= disco.getMusicas().size() %></td>
                
                    
                
            </tr>
            <%}%>
        </table>
        
    </body>
</html>

<%-- 
    Document   : musicas.jsp
    Created on : 10/10/2019, 13:54:21
    Author     : ernandes
--%>

<%@page import="br.com.fatecpg.music.Musica"%>
<%@page import="br.com.fatecpg.music.Disco"%>
<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Músicas</title>
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
        
               <hr/>
        
        <h1> Musicas </h1>
        
        <table border="1">
            <tr>
                <th>Artista</th>
                <th>Disco</th>
                <th>Nome</th>
                <th>Duração</th>
                <th>Autoria</th>
            </tr>
            
          
        </table>
    </body>
</html>

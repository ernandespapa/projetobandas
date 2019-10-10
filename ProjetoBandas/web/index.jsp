<%-- 
    Document   : index
    Created on : 23/09/2019, 14:07:04
    Author     : a
--%>

<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Index </title>
    </head>
    <body>
        
          <h2> 
            <a href="index.jsp"> Home </a> ||
            <a href="artistas.jsp"> Artistas </a> ||
            <a href="discos.jsp"> Discos </a> ||
            <a href="musicas.jsp"> Musicas </a> ||
        </h2>
        <h1> Pagina Inicial</h1>
        <h2>Artistas: <u><%=Db.getArtistas().size() %></u></h2>
        <h2>Discos <u><%=Db.getDiscos().size() %></u></h2>
        <h2>Musicas: <u><%=Db.getMusicas().size() %></u></h2>
      
        <hr/>
    </body>
</html>

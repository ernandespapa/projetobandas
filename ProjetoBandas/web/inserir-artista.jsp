<%-- 
    Document   : inserir-banda
    Created on : 10/09/2019, 16:50:34
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name = "view port" content = "width=device-width, user-scalable=no, inicial-scalable=1.0, mimum-scalable=1.0, minimum-scalable=1.0">
        
        <title>Inserir - Artista</title>
    </head>
    <body>
    
        <%
            if (request.getParameter("inserir") != null) {
                String nome = request.getParameter("nome");
                
                String gênero = request.getParameter("gênero");
                
                Artista c = new Artista(nome, gênero);
                Db.getArtistas().add(c);
                response.sendRedirect("inserir-artista.jsp");
            }
        %>
        
         <h1> Pagina Inicial</h1>
       
        <h2> 
            <a href="index.jsp"> Home </a> ||
            <a href="artistas.jsp"> Artistas </a> ||
            <a href="discos.jsp"> Discos </a> ||
            <a href="musicas.jsp"> Musicas </a> ||
        </h2>
        <hr/>
        
        <h1> Artistas</h1>
        <form>
            <fieldset>
                
                    <h2>Inserir - Artista</h2>
                    <div>
                        <label>Nome: </label>
                        <input type="text" name="nome" class="form-control"/>
                    </div>
                     <div>
                        <label>Gênero: </label>
                        <input type="text" name="gênero" class="form-control"/>
                    </div>
                    
                    <input type="submit" name="inserir" value="Inserir" class="button"/>
            </fieldset>
            </form>
          
               
    
    </body>
</html>

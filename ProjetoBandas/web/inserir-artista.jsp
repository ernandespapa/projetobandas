<%-- 
    Document   : inserir-artista
    Created on : 10/10/2019
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir - Artista</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <%
            if (request.getParameter("inserir") != null) {
                String nome = request.getParameter("nome");
                String genero = request.getParameter("genero");
                String membros = request.getParameter("membros");
                
                Artista c = new Artista(nome, genero, membros);
                c.setNome(nome);
                c.setGenero(genero);
                c.setMembros(membros);
                Db.getArtistas().add(c);
                response.sendRedirect("lista-artista.jsp");
            }else if(request.getParameter("cancelar") != null){
            
                response.sendRedirect("lista-artista.jsp");
                
            }
        %>
        <form>
                
                    <h2>Inserir - Banda</h2>
                    <div>
                        <label>Nome: </label>
                        <input type="text" name="nome" class="form-control"/>
                    </div>
                    <br/>
                    <div>
                        <label>Genero: </label>
                        <input type="text" name="genero" class="form-control"/>
                    </div>
                    <br/>
                    <div>
                        <label>Membros: </label>
                        <input type="text" name="membros" class="form-control"/>
                    </div>
                    
                    
                    <input type="submit" name="inserir" value="Inserir" class="btn btn-primary"/>
                    <input type="submit" name="cancelar" value="Cancelar" class="btn btn-primary"/>
                    
            </form>
        
    </body>
</html>

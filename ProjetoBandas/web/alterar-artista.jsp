<%-- 
    Document   : alterar-artista
    Created on : 10/10/2019, 16:44:13
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Alterar - Artistas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
         <%
            int i = Integer.parseInt(request.getParameter("i"));
            Artista c = Db.getArtistas().get(i);
            if (request.getParameter("alterar") != null) {
                String nome = request.getParameter("nome");
                String genero = request.getParameter("genero");
                String membros = request.getParameter("membros");
             
                c.setNome(nome);
                c.setGenero(genero);
                c.setMembros(membros);
                Db.getArtistas().set(i, c);
                response.sendRedirect("lista-artista.jsp");
            } else if (request.getParameter("cancelar") != null) {

                response.sendRedirect("lista-artista.jsp?codigoBanda=" + i);

            }
        %>

        
         <form>
                
                    <h2>Alterar Artistas</h2>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <div>
                        <label>Nome:</label>
                        <input type="text" name="nome" class="form-control" value="<%=c.getNome()%>"/>
                    
                    </div>
                    <br/>
                    <div>
                        <label>Genero: </label>
                        <input type="text" name="genero" class="form-control" value="<%=c.getGenero()%>"/>
                    
                    </div>
                    <br/>
                     <div>
                        <label>Membros: </label>
                        <input type="text" name="membros" class="form-control" value="<%=c.getMembros()%>"/>
                    
                    </div>
                    <br/>

                    <input type="submit" name="alterar" class="btn btn-primary" value="Alterar"/>
                    <input type="submit" name="cancelar" value="Cancelar" class="btn btn-primary"/>
            </form>
          
    </body>
</html>
